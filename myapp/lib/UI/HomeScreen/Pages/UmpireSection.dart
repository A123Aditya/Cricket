import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:flutter/material.dart';

class SocketIOExample extends StatefulWidget {
  @override
  _SocketIOExampleState createState() => _SocketIOExampleState();
}

class _SocketIOExampleState extends State<SocketIOExample> {
  final String serverUrl = 'http://192.168.100.155:5000';
  late io.Socket socket;
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  // @override
  void initState() {
    super.initState();

    // Initialize and connect to the socket server.
    socket = io.io(serverUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket.connect();

    //   // Event listeners.
    //   socket.onConnect((_) {
    //     print('Connected to the socket server');
    //   });

    //   socket.onDisconnect((_) {
    //     print('Disconnected from the socket server');
    //   });

    // socket.on('chat', (data) {
    //   print("Message recieved");
    //   setState(() {
    //     messages.add(data);
    //   });
    // });
  }

  // Function to send a message to the server.
  void sendMessage() {
    String message = messageController.text;
    if (message.isNotEmpty) {
      socket.emit('chat', message);
      messageController.clear();
    }
  }

  // @override
  // void dispose() {
  //   socket.disconnect();
  //   socket.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Socket.IO Chat Example'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Enter your message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
