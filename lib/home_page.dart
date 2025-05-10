import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: ElevatedButton(
              onPressed: () => _showAlertbox(context),
              child: Text("open Dialog")),
        ));
  }

  void _showAlertbox(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              color: Colors.redAccent,
              child: Column(
                spacing: 20,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("hello guys do you like these vedios "),
                  ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Yesz"))
                ],
              ),
            ),
          );
        });
  }
}
