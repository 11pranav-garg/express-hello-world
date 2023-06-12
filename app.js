const socket = io();

const messageContainer = document.getElementById('message-container');
const messageForm = document.getElementById('chat-form');
const messageInput = document.getElementById('message-input');

messageForm.addEventListener('submit', e => {
  e.preventDefault();
  const message = messageInput.value;
  socket.emit('chatMessage', message);
  messageInput.value = '';
});

function addMessage(message) {
  const messageElement = document.createElement('div');
  messageElement.classList.add('message');
  messageElement.innerHTML = `<p class="meta">User ${message.id}</p>
                              <p class="text">${message.text}</p>`;
  messageContainer.append(messageElement);
  messageContainer.scrollTop = messageContainer.scrollHeight;
}

socket.on('chatMessage', message => {
  addMessage(message);
});
