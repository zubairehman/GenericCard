import 'package:flutter/material.dart';
import 'package:flutter_app/ui/card/card_basic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Card'),
        ),
        body: Material(
            color: Colors.grey[200],
            child: MyHomePage(
              imagePath: 'assets/images/image.jpg',
              title: 'Flutter Demo Card',
              subtitle: 'by Zubair Rehman',
              body:
                  'Visit ten places on our planet that are undergoing the biggest changes today.',
              flatButtons: [
                FlatButton(
                  child: Text(
                    'First Button',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.blueAccent),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    'Second Button',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Colors.blueAccent),
                  ),
                  onPressed: () {},
                ),
              ],
              iconButtons: [
                IconButton(
                  icon: Icon(Icons.assignment),
                  color: Colors.grey[500],
                  iconSize: 24.0,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.email),
                  color: Colors.grey[500],
                  iconSize: 24.0,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  color: Colors.grey[500],
                  iconSize: 24.0,
                  onPressed: () {},
                ),
              ],
            )),
      ),
    );
  }
}
