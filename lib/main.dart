import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visibility Widget Exp',
      theme: ThemeData(primarySwatch: Colors.blue,
      ),
      home: const VisibilityWidgetScreen(),
    );
  }
}

class VisibilityWidgetScreen extends StatefulWidget {
  const VisibilityWidgetScreen({Key? key}) : super(key: key);

  @override
  _VisibilityWidgetScreenState createState() => _VisibilityWidgetScreenState();
}

class _VisibilityWidgetScreenState extends State<VisibilityWidgetScreen> {
  bool isVisibile = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility Widget Exp"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(onPressed: () {
                setState(() {
                  isVisibile = !isVisibile;
                });
              }, child: Text("switch")),
            ),
            SizedBox(height: 10,),
            Visibility(
              visible: isVisibile,
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}

