import 'dart:html';

import 'package:app_task_management/app/routes/app_pages.dart';
import 'package:app_task_management/app/utils/widget/sidebar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Row(
        children: [

          Expanded( 
            flex: 2,
            child: SideBar()),
          Expanded(
            flex: 15,
            child: Container(
            color: Colors.white,
            
            
          ))
        ],
      ),

    );
  }
}
