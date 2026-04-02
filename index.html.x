<!DOCTYPE html>
<html>
<head>
  <title>Love is Love</title>
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
    let chatBox = document.getElementById("chatBox");

    if (input.value.trim() !== "") {
        chatBox.innerHTML += "<p>👤: " + input.value + "</p>";
        input.value = "";
        chatBox.scrollTop = chatBox.scrollHeight;
    }
}
</script>

</body>
</html>
