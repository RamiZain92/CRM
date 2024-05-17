const socket = require('socket.io');

//Socket setup
module.exports = function (server) {
    var socket_io = socket(server, {
        cors: {
            origin : ":*:",
            methods: ["GET", "POST"]
        }
    });

    function closeSocket(socket) {
        socket.disconnect(true);
    }

    socket_io.on('connection', async function (socket) {
        const userBody = await socket.handshake.query;
        if(userBody.type === "admin"){
            socket.join("admin")
        }
        if(userBody.type === "developer"){
            socket.join("developer")
        }
        socket.on("newFeature", async function (data) {
            try {
                socket_io.to("admin").emit("newFeature", data)
            } catch (error) {
                logger.error("Error in newMessage:", error);
            }
        });

        socket.on("updateFeature", async function (data) {
            try {
                socket_io.to("developer").emit("updateFeature", data)
                socket_io.to("admin").emit("updateFeature", data)
            } catch (error) {
                logger.error("Error in newMessage:", error);
            }
        });
    });
};