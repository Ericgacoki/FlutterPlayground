import 'package:flutter/material.dart';

class FlutterWidgets extends StatefulWidget {
  const FlutterWidgets({super.key});

  @override
  State<FlutterWidgets> createState() => _FlutterWidgetsState();
}

class _FlutterWidgetsState extends State<FlutterWidgets> {
  bool isSwitched = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Components"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Image.asset('img/flutter.jpg', height: 200),
                  Image.network('https://image.png')
                ],
              ),
            ),
            const SizedBox(height: 24),
            const Divider(),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey,
              width: double.maxFinite,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text("This is a Container with padding and margin"),
              ),
            ),
            ElevatedButton(
              onPressed: (() {}),
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: (() {}),
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: (() {}),
              child: const Text("Text Button"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.lock, color: Colors.blue),
                Text("This is a Row Widget"),
                Icon(Icons.lock, color: Colors.blue),
              ],
            ),
            Switch(
              value: isSwitched,
              onChanged: ((newValue) {
                setState(() {
                  isSwitched = !isSwitched;
                });
              }),
            ),
            Checkbox(
                value: isChecked,
                onChanged: ((newValue) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }))
          ],
        ),
      ),
    );
  }
}
