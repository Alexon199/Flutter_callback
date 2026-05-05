import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallbackExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CallbackExample extends StatefulWidget {
  @override
  _CallbackExampleState createState() => _CallbackExampleState();
}

class _CallbackExampleState extends State<CallbackExample> {
  String _message = 'Belum ada aksi';

  void _handleButtonTap() {
    setState(() {
      _message = 'Tombol ditekan!';
    });
  }

  void _handleBoxTap() {
    setState(() {
      _message = 'Kotak disentuh!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Callback')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _handleButtonTap,
              child: Text('Tekan Saya'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: _handleBoxTap,
              child: Container(
                width: 120,
                height: 120,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Sentuh Kotak',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(_message, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
