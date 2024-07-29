import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(SignUp());
}
class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>MaterialApp(
    home: Next(),
  );
}
class Next extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios_new)),
    ),
  );

}