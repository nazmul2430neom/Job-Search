// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                      // ignore: prefer_const_constructors
                      Text("Welcome home",style: TextStyle(color: Colors.grey,fontSize: 14),),
                      // ignore: prefer_const_constructors
                      Text("Annie Bryant",style: TextStyle(color: Colors.black87,fontSize: 25,height: 2),),
                ],
              ),
              ),
              

              Container(
                  transform: Matrix4.rotationZ(100),
                child: Row(
                  children: [
                    Stack(
                      children: [
                       Container(
                        child:   Icon(Icons.notifications_none_outlined,size: 27,color: Colors.grey,),
                       ),
                       SizedBox(width: 20,),

                         Positioned(
                          top: 1,left: 18,
                          child: Container(
                             padding: EdgeInsets.all(5),
                             decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                         ),
                         )
                      ],
                    ),

                      Container(
                         child: Padding(
                           padding: const EdgeInsets.only(top: 45,right:38 ),
                           child: ClipOval(
                           child: Image(
                           image: AssetImage("assets/images/avatar.png"),width: 50,
                    ),
                    ),
                         ),
              ),

                  ],
                ),
              ), 
          
        ],
      ),
    );
    
  }
}