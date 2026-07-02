import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Green Screen")),
    );
  }
}

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text("Red Screen")),
    );
  }
}

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("Blue Screen")),
    );
  }
}

enum AppTabs { red, green, blue }


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppTabs _currentTab = AppTabs.red;

  AppTabs get currentTab => _currentTab;

  Widget get content {
    switch (_currentTab) {
      case AppTabs.red:
        return const RedScreen();
      case AppTabs.green:
        return const GreenScreen();
      case AppTabs.blue:
        return const BlueScreen();
    }
  }

  void onTabSelected(AppTabs tab) {
    setState(() {
      _currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tabs navigation")),
      body: content,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => onTabSelected(AppTabs.red),
              icon: Icon(Icons.home),
              color: Colors.red,
            ),
            IconButton(
              onPressed: () => onTabSelected(AppTabs.green),
              icon: Icon(Icons.home),
              color: Colors.green,
            ),
            IconButton(
              onPressed: () => onTabSelected(AppTabs.blue),
              icon: Icon(Icons.home),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: App()));
}
