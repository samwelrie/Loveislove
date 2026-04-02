<!DOCTYPE html>
<html>
<head>
  <title>Love is Love</title><style>
body {
    font-family: Arial;
    background-color: #ffe6f0;
    text-align: center;
}

h1 {
    color: #ff4d88;
}

#chatBox {
    background: white;
    border-radius: 10px;
    padding: 10px;
}

input {
    padding: 10px;
    border-radius: 20px;
    border: 1px solid #ccc;
}

button {
    background-color: #ff4d88;
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 20px;
}
</style>
</head>
<body>

<h1>Love is Love ❤️</h1>

<div id="chatBox" style="border:1px solid #ccc; height:200px; overflow:auto; margin-bottom:10px; padding:10px;">
</div>

<input type="text" id="messageInput" placeholder="Type a message..." />
<button onclick="sendMessage()">Send</button>

<script>
function sendMessage() {
    let input = document.getElementById("messageInput");

    if (input.value.trim() !== "") {
        db.collection("messages").add({
            text: input.value,
            time: Date.now()
        });

        input.value = "";
    }
}
</script><script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-firestore.js"></script>

<script>
const firebaseConfig = {
  // paste your config here
};

firebase.initializeApp(firebaseConfig);
const db = firebase.firestore();
</script><script>
db.collection("messages")
.orderBy("time")
.onSnapshot(snapshot => {
    let chatBox = document.getElementById("chatBox");
    chatBox.innerHTML = "";

    snapshot.forEach(doc => {
        chatBox.innerHTML += "<p>👤: " + doc.data().text + "</p>";
    });

    chatBox.scrollTop = chatBox.scrollHeight;
});
</script>
<script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/12.11.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/12.11.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyDI3_YMcac5FMvr6h2fExFCOQ6AlAmpxFg",
    authDomain: "loveislove-666.firebaseapp.com",
    projectId: "loveislove-666",
    storageBucket: "loveislove-666.firebasestorage.app",
    messagingSenderId: "478205315739",
    appId: "1:478205315739:web:4373741c69449c9b39943e",
    measurementId: "G-1SXBT70C0B"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script>
</body>
</html>
