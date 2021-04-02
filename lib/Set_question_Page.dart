import 'package:flutter/material.dart';
import 'Quiz_page.dart';

class Setquestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Set Questions'),
        backgroundColor: Colors.teal,
      ),
      body: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  FocusNode myFocusNode;
  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: 'Enter Your question'),
              focusNode: myFocusNode,
            ),
            Row(
              children: <Widget>[
                RadioListTile(
                  value: false,
                  onChanged: null,
                  groupValue: null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
