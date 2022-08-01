// ignore_for_file: unused_field, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList=["All","⚡ Popular","⭐ Featured"];
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount:_tagList.length,
        itemBuilder: (context,index){
          return InkWell(
            onTap: () {
              setState(() {
                selected=index;
              });
            },
              
            
            child: Container(
              alignment: Alignment.center,             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:  selected==index? Colors.deepOrange:Colors.white,
                border: Border.all(color:   selected==index?Colors.transparent:Colors.blue)
              ),
              child: Text(_tagList[index]),
            ),
          );

        }, 
        separatorBuilder: (context,index)=>
         SizedBox(width: 10,),
        
        ),

    );
  }
}