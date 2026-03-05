const port = 5000;
const express = require('express');
const cors = require('cors');
var http = require('http');
const { setFlagsFromString } = require('v8');
const app = express();
const server = http.createServer(app);
const io = require('socket.io')(server, {
  cors: {
    origin: "*",
    methods: ["GET", "POST"]
  }
})

//* Middel Ware
app.use(cors());
app.use(express.json());

//
io.on("connection", (socket) => {
  console.log("Connected")
  console.log(socket.id, "Has joined")
  socket.on('event',
    (data) => {
      console.log(data)
      io.emit('event', data)
    })
}
);

server.listen(port, "192.168.0.212", () =>
  console.log(`Server Started ${port}`))
