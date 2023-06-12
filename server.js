const app = require('express')();
const http = require('http').createServer(app);
const io = require('socket.io')(http);

app.get('/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

io.on('connection', (socket) => {
  console.log('a user connected');

  // Handle chat messages
  socket.on('chat message', (message) => {
    console.log(`message: ${message}`);
    io.emit('chat message', message);
  });

  

  // Handle disconnections
  socket.on('disconnect', () => {
    console.log('user disconnected');
    const username = socketMap.get(socket.id);
    if (username) {
      io.emit('chat message', {
        sender: 'System',
        time: new Date().toLocaleTimeString(),
        text: `${username} has left the chat`,
      });
      socketMap.delete(socket.id);
    }
  });

  // Add the user's username to the socket map
  socket.on('set username', (username) => {
    console.log(`user ${username} connected`);
    socketMap.set(socket.id, username);
    io.emit('chat message', {
      sender: 'System',
      time: new Date().toLocaleTimeString(),
      text: `${username} has joined the chat`,
    });
  });
});

// Start the server
const PORT = process.env.PORT || 3000;
http.listen(PORT, () => {
  console.log(`listening on *http://localhost:${PORT}`);
});

// Map socket IDs to usernames
const socketMap = new Map();
