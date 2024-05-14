import http from "http";

import express from "express";


const app = express();

app.set("view engine", "pug");
app.set("views", __dirname + "/views");
app.use("/public", express.static(__dirname + "/public"));
app.get("/", (_, res) => res.render("home"));
app.get("/*",(_,res) => res.redirect("/"));

const handleListen = () => console.log(`Listening on http://localhost:3000`);

const server =http.createServer(app); //httpserver

const wss = new WebSocket.Server({server}); //WebSocketServer


function onSocketClose() {
    console.log("Disconnected from the Browser ❌");
  }

  // const sockets = []; //누군가 서버에 연결하면 그 connection을 여기에 넣는다. 
  
  // wss.on("connection", (socket) => {
  //   sockets.push(socket); //firefox가 연결될대 firefox를 이 array넣어준다는것
  //   socket["nickname"] = "Anon"
  //   console.log("Connected to Browser ✅");
  //   socket.on("close", onSocketClose);
  //   socket.on("message", (msg) => {
  //       const message = JSON.parse(msg);
  //       switch (message.type) {
  //         case "new_message":
  //           sockets.forEach((aSocket) =>
  //             aSocket.send(`${socket.nickname}: ${message.payload}`)
  //           );
  //         case "nickname":
  //           socket["nickname"] = message.payload;
  //       }
  //     });
  // });
  
//   server.listen(3000, handleListen);
