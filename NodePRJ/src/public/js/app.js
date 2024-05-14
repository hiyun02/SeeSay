const socket = io().connect(); //client Server


const room = document.getElementById("room");
const chatmsg= document.getElementById("chatmsg");
const ssessoin = "나다"; //세션아이디 여기다가 넣기

var today = new Date();   

var hours = ('0' + today.getHours()).slice(-2); 
var minutes = ('0' + today.getMinutes()).slice(-2);
var seconds = ('0' + today.getSeconds()).slice(-2); 

var timeString = hours + ':' + minutes  + ':' + seconds;



let roomName= "SeeSay";


//대화 메시지 
function handleMessageSubmit(event){
    event.preventDefault(); //메시지멈추기
    //const input = chatmsg.querySelctor("input");
  
    const name="최민호"
    const input = chatmsg.querySelector("input");
    socket.emit("new_message",input.value,roomName, () =>{
        addMessage(`${input.value}`);
        input.value="";
    });
}

//닉네임 submit event 메시지 -->이거 없애지마 없앳는데 오류뜸
function handleNicknameSubmit(event) {
    event.preventDefault();
    //const input = room.querySelector 쿼리셀렉터는 첫번째 있는것만 가져옴
    const input = room.querySelector("#name input");
    const value = input.value;
    socket.emit("nickname",input.value);
}


async function showRoom(){

    const h3 =room.querySelector("h3");
    h3.innerText=`Room ${roomName}`
    // const msgForm = chatmsg.querySelector("#msg");
    // msgForm.addEventListener("submit",handleMessageSubmit);

    const form = chatmsg.querySelector("form");
    form.addEventListener("submit",handleMessageSubmit);
   // const msgForm = room.querySelector("#msg");
   // const nameForm = room.querySelector("#name");
   // msgForm.addEventListener("submit",handleMessageSubmit);
   // nameForm.addEventListener("submit",handleNicknameSubmit);

   await getMedia(); //------추가 -----------
    //withRTC
    makeConnection();

}


//enter Room 함수 실행 
async function handleRoomSubmit(event) {
  
   await showRoom();
    socket.emit("enter_room", roomName); //enterRoom 버튼을 누르면 input.value 이름을 가지고 showRoom함수가실행
    
  }
  handleRoomSubmit(); 

function addMessage(message){
  console.log(message);
  const chat = document.getElementById("chatting");

  let html='';
  html+='<ul class="chat">'
  html+='<li class="left clearfix">'

  //****세션 아이디랑 시간담아서 전체 메시지 보내기! 아직 아이디랑 시간 안담음**** 
  html+='<div class="chat-body clearfix">'
  html+='<div class="header">'
  html+=' <strong class="primary-font">'+ssessoin+'</strong> <small class="pull-right text-muted">'
  html+='<span class="glyphicon glyphicon-time"></span>'+timeString+'</small>'
  html+='</div>'
  html+='<p>'+message+'</p>'
  html+= '</div></li></ul>';
  
  chat.innerHTML += html;
}
//WRT서버 peerA--------------------------------------
socket.on("welcome", async (newCount) => {
  const h3 = room.querySelector("h3");
  h3.innerText = `Room ${roomName} (${newCount})`;
  addMessage("welcome joined");
  const offer = await myPeerConnection.createOffer();
  myPeerConnection.setLocalDescription(offer);
  console.log("sent the offer");
  socket.emit("offer", offer, roomName);
 
});


//peerB
socket.on("offer", async (offer) => {
  console.log("received the offer");
  myPeerConnection.setRemoteDescription(offer);
  const answer = await myPeerConnection.createAnswer();
  myPeerConnection.setLocalDescription(answer);
  socket.emit("answer", answer, roomName);
  console.log("sent the answer");
});

socket.on("answer", (answer) => {
  console.log("received the answer");
  myPeerConnection.setRemoteDescription(answer);
});

socket.on("ice", (ice) => {
  myPeerConnection.addIceCandidate(ice);
});

//----------------------------------------------------

socket.on("bye", (left,newCount)=> {
    const h3 = room.querySelector("h3");
    h3.innerText = `Room ${roomName} (${newCount})`;
    addMessage(`${left} leftㅠㅠ!`);
  })

  //보낸메세지를받기
  socket.on("new_message", addMessage);
  //socket.on("new_message", (msg) => {addMessage(msg)});
  socket.on("room_change",(rooms) =>{
      const roomList =welcome.querySelector("ul");
      if(rooms.length === 0){
          roomList.innerHTML = "";
          return;
      }
      rooms.forEach(room => {
          const li =document.createElement("li");
          li.innerText=room;
          roomList.append(li);
      });
  });
  //socket.on("room_change",(msg) => console.log(msg));

  //stream 비디오와 오디오 결합시켜버리기
  const myFace = document.getElementById("myFace");
  const muteBtn = document.getElementById("mute");
  const cameraBtn = document.getElementById("camera");
  const cameraSelect = document.getElementById("cameras");

  let myStream;
  let muted = false; //소리나는대로시작
  let cameraOff = false; //카메라가 꺼진채로시작 
  let myPeerConnection;

  const i =0

  async function getCameras(){
    try{
        const devices = await navigator.mediaDevices.enumerateDevices();
        const cameras =devices.filter(device => device.kind =="videoinput");
        const currentCamera = myStream.getVideoTracks()[0];


        console.log(myStream.getVideoTracks())

        console.log(cameras)
        console.log(currentCamera)
        cameras.forEach(camera =>{
          console.log(camera);
          const option = document.createElement("option");
          option.value = camera.deviceId[0];
          option.innerText = camera.label[0];
          if (currentCamera.label === camera.label) {
        
           option.selected = true;
       
      }
 
      console.log(camera.label)

      cameraSelect.appendChild(option);
    });
  } catch (e) {
    console.log(e);
  }
}

  async function getMedia(deviceId) {
    deviceId = "13294db34cb38d4c1eb97096fce5c2ceb7aaf29179be5c4e77555c1fa97ffc61";
    
    const initialConstrains = {
      audio: true,
      video: { facingMode: "user" },
    };
    const cameraConstraints = {
      audio: true,
      video: { deviceId: { exact: deviceId } },
    };
    try {
      myStream = await navigator.mediaDevices.getUserMedia(
        deviceId ? cameraConstraints : initialConstrains
      );
      myFace.srcObject = myStream;
      if (!deviceId) {
        await getCameras();
      }
    } catch (e) {
      console.log(e);
    }
  }

  // 소리
  function handleMuteClick() {
   myStream.getAudioTracks().forEach(track => track.enabled = !track.enabled);
    if (!muted) {
      muteBtn.innerText = "Unmute";
      muted = true;
    } else {
      muteBtn.innerText = "Mute";
      muted = false;
    }
    }
    
   //카메라
    function handleCameraClick() {
        myStream.getVideoTracks().forEach(track => track.enabled = !track.enabled);
        if (cameraOff) {
          cameraBtn.innerText = "Turn Camera Off";
          cameraOff = false;
        } else {
          cameraBtn.innerText = "Turn Camera On";
          cameraOff = true;
        }
    }

    async function handleCameraChange() {
      await getMedia(cameraSelect.value);
      if (myPeerConnection) {
        const videoTrack = myStream.getVideoTracks()[0];
        const videoSender = myPeerConnection
          .getSenders()
          .find((sender) => sender.track.kind === "video");
        videoSender.replaceTrack(videoTrack);
      }
    }

  muteBtn.addEventListener("click", handleMuteClick);
  cameraBtn.addEventListener("click", handleCameraClick);
  cameraSelect.addEventListener("input", handleCameraChange);

  //RTC code
  function makeConnection(){
    myPeerConnection = new RTCPeerConnection();
    myPeerConnection.addEventListener("icecandidate", handleIce);
    myPeerConnection.addEventListener("addstream", handleAddStream);
      myStream
        .getTracks()
        .forEach((track) => myPeerConnection.addTrack(track, myStream));
    
  }
  function handleIce(data) {
    console.log("sent candidate");
    socket.emit("ice", data.candidate, roomName);
  }
  
  function handleAddStream(data) {
    const peerFace = document.getElementById("peerFace");
    peerFace.srcObject = data.stream;
  }