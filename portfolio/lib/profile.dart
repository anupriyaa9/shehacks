import 'package:flutter/material.dart' 
show Alignment, BoxDecoration, BuildContext, CircleAvatar, Colors, Column, Container, FontWeight, LinearGradient, MainAxisAlignment, NetworkImage, Scaffold, SizedBox, StatelessWidget, Text, TextStyle, Widget;
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.purpleAccent.shade400, Colors.deepPurple.shade900]
                  )
                ),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      height: 10.0,
                    ),
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://images.unsplash.com/photo-1584351830276-f8bd4b651cbe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                        ),
                        radius: 46.0,
                      ),
                      SizedBox(
                      height: 4.0,
                    ),
                        Text(
                          "Anupriya Asok",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      SizedBox(
                        height: 5.0,
                      ),
                        Text(
                          "\nTECH STACKS:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                        ),
                  ),
                      Text('Flutter, CSS, HTML',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                ),
                        ),
              SizedBox(
                        height: 20.0,
                      ),          
              Container(
                 child: Text( 
                   'Open to learning & gaining new skills!',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                     fontSize: 19,
                     fontWeight: FontWeight.w500, 
                     color: Colors.black),
              ),
               ),
               SizedBox(
                        height: 13.0,
                      ),
              Text('Hello guys! Myself Anupriya,\n a B.Tech(IT) student from CUCEK, CUSAT.\nJust a beginner, having knowledge of Figma\n& a bit of Flutter, HTML, C/C++.',
                textAlign: TextAlign.center,
                style: TextStyle(
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
               ),
              ),
               const SizedBox(width: 10),
               Padding(padding:EdgeInsets.all(10)),
               ElevatedButton(
                  onPressed: () =>{},
              child: new Text('Contact Me',
              style: TextStyle(color: Colors.white, fontSize: 19.0,
              ),
              ),
                       ),
          Container(
           margin: EdgeInsets.symmetric(vertical: 20.0),
           height: 120.0,
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[const SizedBox(width: 10),
              Container(
                width: 120.0,
                child: Align(alignment:Alignment.center,
                child: 
                Text('About\n   Me',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ), ),), 
                decoration: BoxDecoration(color: Colors.deepPurple.shade800,borderRadius: BorderRadius.circular(12)),
              ),
              const SizedBox(width: 10),
              Container(
               
                width: 120.0,
                 child: Align(alignment:Alignment.center,
                child: 
                Text('Social\nMedia',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ), ),),
                
                decoration: BoxDecoration(color: Colors.deepPurple.shade800 ,borderRadius: BorderRadius.circular(12)),
              ),
              const SizedBox(width: 10),
              Container(
                
                width: 120.0,
                 child: Align(alignment:Alignment.center,
                child: 
                Text('Hobbies',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ), ),),
                
                decoration: BoxDecoration(color: Colors.deepPurple.shade800 ,borderRadius: BorderRadius.circular(12)),
              ), 
              const SizedBox(width: 10),
              Container(
                
                width: 120.0,
                 child: Align(alignment:Alignment.center,
                child: 
                Text('Experience',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                   color: Colors.white,
                 ), 
                 ),),
               decoration: BoxDecoration(color: Colors.deepPurple.shade800, borderRadius: BorderRadius.circular(12)),
              ),
              const SizedBox(width: 10),
            ]
            ),
          )
          ],
              ),
    );
  }
}
