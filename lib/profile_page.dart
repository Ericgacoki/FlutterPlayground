import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const ProfilePageState(),
    );
  }
}

class ProfilePageState extends StatefulWidget {
  const ProfilePageState({super.key});

  @override
  State<ProfilePageState> createState() => _ProfilePageStateState();
}

class _ProfilePageStateState extends State<ProfilePageState> {
  int itemCount = 50;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: const Text("Profile"),
            subtitle: Text("Item ${index + 1}"),
            enabled: index + 1 != 5,
            leading: const Icon(Icons.breakfast_dining),
            iconColor: Colors.blue,
            onTap: (() {}),
          );
        });
  }
}
