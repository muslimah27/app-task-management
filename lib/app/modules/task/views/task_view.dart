import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:app_task_management/app/routes/app_pages.dart';
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:app_task_management/app/utils/widget/headers.dart';
import 'package:app_task_management/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  
final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_drawerKey,
      drawer: SideBar(),
      backgroundColor: appColors.primaryBg,
      body: Row(
        children: [
         !context.isPhone 
         ? const Expanded( 
            flex: 2,
            child: const SideBar(), 
            )
          : const SizedBox(),

         Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone 
                ? const Header()
                : Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                  children: [IconButton(onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  }, 
                  icon: Icon(Icons.menu, 
                  color: appColors.primaryText)
            ),

             const SizedBox(
              width: 15, 
           ),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Task Management',
                  style: TextStyle(fontSize: 20, color: appColors.primaryText),
                ),
                Text('Menjadi mudah dengan Task Management',
                    style: TextStyle(fontSize: 14, color: appColors.primaryText)
                )
              ],
            ),
            const Spacer(),
            const Icon(Icons.notifications, 
            color: appColors.primaryText, 
            size: 30,
        ),
            const SizedBox(
              width: 15, 
        ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
            child: const CircleAvatar(
              backgroundColor: Colors.amber, 
              radius: 25,
              foregroundImage: NetworkImage(
                "https://yt3.ggpht.com/a/AATXAJyUEgqkrx-_Vhz-cpHNMfONR22tfRaCScNzyg=s900-c-k-c0xffffffff-no-rj-mo"),
                ),
            )
          ],
        ),
      ),
            //content / isipage /screen
                Expanded(
                  child: Container(
                  padding: const EdgeInsets.all(50),
                  margin: !context.isPhone  
                  ? const EdgeInsets.all(10)
                  : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone 
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(30),

                      ),
                ))
              ],
            ),
         ),
        ],
      ),
    );
  }
}
