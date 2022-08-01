// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:jobsearch/widget/home_appbar.dart';
import 'package:jobsearch/widget/search_bar.dart';
import 'package:jobsearch/widget/tag_list.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex:2,child: Container()),
              Expanded(flex:1,child: Container(color: Colors.grey.withOpacity(0.2))),
            ],
          ),
          Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              HomeAppbar(),SearchBar(),TagList()
            ],
          ),
        ],
        
      ),
    );
    
  }
}