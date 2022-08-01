// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.all(10),
      height: 210,
      width: 410,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(image: AssetImage("assets/images/search_bg.png"),fit: BoxFit.cover),
      ),
          child: Padding(
            padding: const EdgeInsets.only(left: 28,top: 10),
            child: Column(
              
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("Fast Search",style: TextStyle(color: Colors.white,fontSize: 25,height: 2),),
            Text("You can search quickly for\nthe job you want",style: TextStyle(color: Colors.white54,fontSize: 14,height: 2),),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              //padding: EdgeInsets.only(left: 50,right: 50),
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(Icons.search,color: Colors.grey,size: 22,),
                    SizedBox(width: 12,),
                    Text("Search",style: TextStyle(color: Colors.grey,fontSize: 18),)
                  ],
                ),
              ),
            ),
        
        ],
      ),
          ),
 
     
     
    );
    
  }
}