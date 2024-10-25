
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: popup(),
  ));
}

class popup extends StatefulWidget {
  popup({super.key});

  @override
  State<popup> createState() => _popupState();
}

class _popupState extends State<popup> {
  @override
  Widget build(BuildContext context) {
    Future<bool?> alert() {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("confirm"),
            content: Text("do you want to continue?"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: () {
                 Navigator.of(context).pop(false);
                },
                child: Text("Cancel"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: ()async {
            final x = await alert();
            print(x);
          },
          child: Text("Click me"),
        ),
      ),
    );
  }
}
