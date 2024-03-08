import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class ScoreController extends GetxController {
  final String serverUrl = 'http://192.168.100.155:5000';
  late io.Socket socket;
  RxString run = "0".obs;
  RxString wicket = "0".obs;

  @override
  void onInit() {
    super.onInit();

    socket = io.io(serverUrl, <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': true,
    });

    socket.connect();

    // Event listeners.
    socket.onConnect((_) {
      print('Connected to the socket server');
    });

    socket.onDisconnect((_) {
      print('Disconnected from the socket server');
    });


    socket.on('chat', (data) {
      run.value = data.toString();
    });
  }
}
