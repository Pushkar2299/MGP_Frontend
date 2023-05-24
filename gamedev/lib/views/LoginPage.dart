import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logoBuilder(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Sign In', style: TextStyle(fontSize: 30),),
          ),
          inputField(Icons.account_circle_sharp, 'User Name',null),
          inputField(Icons.key_outlined, 'Password', CupertinoIcons.eye_solid),
          Text('Forgot Password ?'),
          loginButton(),
          Text('or', style: TextStyle(fontSize: 20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginIcon('assets/google.png'),
              loginIcon('assets/facebook.png'),
              loginIcon('assets/discord.png'),
            ],
          ),
        ],
      ),
    );
  }
  Widget logoBuilder(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image(
          height: 100,
          image: AssetImage('assets/logo.png')),
    );
  }
  Widget loginButton(){
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: TextButton(onPressed: null,
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.pinkAccent.shade100,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text('Login', style: TextStyle(fontWeight: FontWeight.w700),)),
          )),
    );
  }
  Widget inputField(IconData iconData, String head, IconData? trailing){
    return Padding(
      padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
      child: SizedBox(
        height: 70,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(30)
          ),
          child: ListTile(
            horizontalTitleGap: 0,
            visualDensity: VisualDensity(horizontal: -1, vertical: -4),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Icon(iconData, color: Colors.white,),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(head),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(border: InputBorder.none,),
                ),
              ],
            ),
            trailing: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Icon(trailing),
            ),
          ),
        ),
      ),
    );
  }
  Widget loginIcon(String address){
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(Radius.circular(50)),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(address),),
        ),
      ),
    );
  }
}

