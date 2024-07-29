import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/Login.dart';
import 'package:project2/Sign_up.dart';

import 'Forget.dart';

void main(){
  runApp(project());
}
class project extends StatelessWidget{
  @override
  Widget build(BuildContext context)  =>
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  );

}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>
      Scaffold(

        backgroundColor: Color.fromARGB(255, 66, 165, 245),
        appBar: AppBar(
          title: Text('Loggin page ',style: TextStyle(color:Color(0xf0e6efea) ),),
          centerTitle: true,
          /*toolbarHeight: 60,
      toolbarOpacity: 0.6,
      backgroundColor: Color(0xfff4f7f5),*/
          /*actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,color: Color(0xf0e6efea),)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Color(0xf0e6efea),)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Color(0xf0e6efea),)),
          ],*/
          backgroundColor://Color(0xf014ce65)
          Color.fromRGBO(66, 165, 245, 1.0),
          /*leading: IconButton(onPressed: (){},
              icon: Icon(Icons.menu,color: Color(0xf0e6efea),)),*/
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)
              )
          ),
        ),
      body: Column(
        children: [
          Center(
            child:
              Container(

                margin: EdgeInsets.only(top: 60.0,),
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(-0.5, -0.6),
                    radius: 0.15,
                    colors: <Color>[
                      Color(0xFFEEEEEE),
                      //Color(0xFF111133),
                      Color.fromARGB(255, 66, 165, 245)
                    ],
                    stops: <double>[0.9, 1.0],
                  ),
                ),
        child:   Text('Sign In',
          style:
          TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,letterSpacing: 3),),
                  ),

      ),
      //),

         // ),
        SizedBox(
          height: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

             alignment: Alignment.topLeft,
             margin: EdgeInsets.only(left: 44.0,),

              child: Text("Email",style: TextStyle(color: Colors.white,wordSpacing: 2,),),
            )



          ],
        ),
        Column(
          children: [
           

            Card(
              color: Color.fromARGB(255, 66, 165, 245),
              clipBehavior: Clip.antiAlias,
              child:
                  Container(
                    width: 400,
                      margin: EdgeInsets.all(10.0),
                      child:
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.white),
                          hintText: "Enter your email ",
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0),
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                          prefixIconConstraints: BoxConstraints(minWidth: 60, minHeight: 40),

                        ),
                      )
                  )

            ),
          ],
        ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(

                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 44.0,),

                child: Text("Password",style: TextStyle(color: Colors.white,wordSpacing: 2,),),
              )



            ],
          ),
          Column(
            children: [


              Card(
                  color: Color.fromARGB(255, 66, 165, 245),
                  clipBehavior: Clip.hardEdge,
                  child:
                  Container(
                      width: 400,
                      margin: EdgeInsets.all(10.0),
                      child:
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'password',
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0),
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.password_outlined,color: Colors.white),
                          prefixIconConstraints: BoxConstraints(minWidth: 60, minHeight: 40),
                        ),
                      )
                  )

              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(

                alignment: Alignment.topRight,
                margin: EdgeInsets.only(right: 44.0),

               child: TextButton(onPressed: (
                   ){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) =>  SecondRoute()),
                 );
               },
                   child: Text("Forget password?",style: TextStyle(color: Colors.white,wordSpacing: 2,fontStyle: FontStyle.italic),),),
                // child: Text("Forget password?",style: TextStyle(color: Colors.white,wordSpacing: 2,fontStyle: FontStyle.italic),),
              )


            ],
          ),
          SizedBox(
            height: 30,
          ),

          Column(
            children: [
              Center(
               child:    Container(
                    alignment: Alignment.bottomCenter,
                    //margin: EdgeInsets.only(right: 44.0),

                    child: ElevatedButton
                      (onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Login()),
                      );
                    },
                      style:  ButtonStyle(
                        /*shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8),
                   ),*/
                        minimumSize: MaterialStateProperty.all(Size(200, 50)), // Set width and height as per your requirement
                        // Other ButtonStyle properties like backgroundColor, foregroundColor, etc. can be set here
                      ),
                      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      /*shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(8),
                   ),*/
                      child: Text("Loging",style: TextStyle(color:Color.fromRGBO(66, 165, 245, 1.0),
                          fontSize: 18,
                         // wordSpacing: 3,
                          letterSpacing: 3,
                        fontWeight: FontWeight.bold
                          ),),

                  )
              ))

            ],
          ),
          SizedBox(
            height: 8,
          ),
          Column(
            children: [
              Center(
               child:Container(
                 child: Text('- OR -',style: TextStyle(color: Colors.white,),),

                  )
              )

            ],
          ),
          SizedBox(
            height: 4,
          ),
          Column(
            children: [
              Center(
                  child:Container(
                    child: Text('sign in with',style: TextStyle(color: Colors.white,fontSize: 12),),

                  )
              )

            ],
          ),
          SizedBox(
            height: 80,
          ),
          Column(
            children: [
                  Container(
                child: Text("Don't have an account?"),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child:
                    TextButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  SignUp()),
                      );
                    },
                        child: Text('sign up')),
                  )
                ],
              )
            ],
          )
        ],
      ),
      );

}