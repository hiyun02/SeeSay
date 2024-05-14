import http from "http";
import { Server } from "socket.io";
import express from "express";

let cons = require('consolidate');
const app = express();

app.engine("html", cons.swig)
app.set("views", __dirname + "/views"); "src/views 경로설정"
app.set("view engine", "html");
app.use("/public", express.static(__dirname + "/public"));

app.get("/", (_, res) => res.render("home")); //pug home 파일로 이동한다
app.get("/*",(_,res) => res.redirect("/"));

const httpServer = http.createServer(app); //httpserver;
const wsServer = new Server(httpServer);  //Socket Io server


function publicRooms() {
  const {
    sockets: {
      adapter: { sids, rooms },
    },
  } = wsServer;
  const publicRooms = [];
  rooms.forEach((_, key) => {
    if (sids.get(key) === undefined) {
      publicRooms.push(key);
    }
  });
  return publicRooms;
}


//대화방에 몇명이잇는지 세기
function countRoom(roomName) {
  return wsServer.sockets.adapter.rooms.get(roomName)?.size;
}


wsServer.on("connection", (socket) => {
  socket["nickname"] = "Anon";
  socket.onAny((event)=>{
    console.log(wsServer.sockets.adapter);
    console.log(`Socket Event:${event}`); //socket event enter room이 출력됨
  });
  socket.on("enter_room", (roomName) => {
    socket.join(roomName); //방에들어가기위해서는 join 만사용하면됨 방에들어가기위해 사용 
  
    //하나의 소켓에만전송,방크기를 welcome 문자와함께 함수실행시킴
    socket.to(roomName).emit("welcome",countRoom(roomName));
    //연결되 모든 서버에게 새로운방이 만들어졌다고 알리기 
    wsServer.sockets.emit("room_change", publicRooms());
  });
    //RTCSocket
    socket.on("offer", (offer, roomName) => {
      socket.to(roomName).emit("offer", offer);
    });

    socket.on("answer", (answer, roomName) => {
      socket.to(roomName).emit("answer", answer);
    });

    socket.on("ice", (ice, roomName) => {
      socket.to(roomName).emit("ice", ice);
    });
   // ----------------------------------------------------

  //연결이끝나기직전 , 아직내가 안나갔기때문에 room -1
  socket.on("disconnecting", () => {
    socket.rooms.forEach((room) => socket.to(room).emit("bye",socket.nickname,countRoom(room) -1));
   
  });
  //연결이 끝난후
  socket.on("disconnect", () => {
    wsServer.sockets.emit("room_change", publicRooms());
  });

  //백엔드 send newMessage 받았을때 실행
  socket.on("new_message", (msg, room, done) => {
    socket.to(room).emit("new_message",msg)
   // socket.to(room).emit("new_message", `${socket.nickname}:${msg}`);
    done(); //백엔드에서 절대실행하지않고 frontend 함수가실행됨
    //socket.to(roomName).emit("welcome");
  });
 // socket.on("nickname",nickname => socket["nickname"] = nickname);
});
  const handleListen = () => console.log(`Listening on http://localhost:3000`);
  httpServer.listen(3000, handleListen);