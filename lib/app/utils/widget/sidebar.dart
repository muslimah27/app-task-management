
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      child: Container(
        height: Get.height,
      color: appColors.primaryBg,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              child: Image(image: AssetImage('assets/image/icon.png'),)
            ),
            SizedBox(height:10),
            SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.HOME),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/home' ? BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ):BoxDecoration(),
                        child: Column(
                          children: [
                            Icon(
                              Get.currentRoute == '/home' ?
                              Icons.dashboard: Icons.dashboard_outlined, size: 30, color: appColors.primaryText,),
                           
    
                          ],
                        ),
                        
                      ), 
                      SizedBox(height: 10,),
                      Text("Menu")
    
                    ],
                  ),
                ),
              ),
            ),
            //menu 2
    
             SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.TASK),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/task' ? BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ):BoxDecoration(),
                        child: Column(
                          children: [
                            Icon(
                              Get.currentRoute == '/task' ?
                              Icons.dashboard: Icons.dashboard_outlined, size: 30, color: appColors.primaryText,),
                           
    
                          ],
                        ),
                        
                      ), 
                      SizedBox(height: 10,),
                      Text("Task")
    
                    ],
                  ),
                ),
              ),
            ),
    
            //menu 3
    
             SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.FRIEND),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/friends' ? BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ):BoxDecoration(),
                        child: Column(
                          children: [
                            Icon(
                              Get.currentRoute == '/friends' ?
                              Icons.person: Icons.person_add, size: 30, color: appColors.primaryText,),
                           
    
                          ],
                        ),
                        
                      ), 
                      SizedBox(height: 10,),
                      Text("friends")
    
                    ],
                  ),
                ),
              ),
            ),
    
            //menu 4
    
             SizedBox(
              height: 100,
              child: Center(
                child: InkWell(
                  onTap: () => Get.toNamed(Routes.PROFILE),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: Get.currentRoute == '/profile' ? BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ):BoxDecoration(),
                        child: Column(
                          children: [
                            Icon(
                              Get.currentRoute == '/profile' ?
                              Icons.person: Icons.person_outline, size: 30, color: appColors.primaryText,),
                           
    
                          ],
                        ),
                        
                      ), 
                      SizedBox(height: 10,),
                      Text("profile")
    
                    ],
                  ),
                ),
              ),
            ),
            
           
    
          ],
        ),
      ),
    
    
              ),
    );
  }
}
