import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import '../../routes/app_pages.dart';

class myFriends extends StatelessWidget {
  const myFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Friends',
                    style: TextStyle(
                      color: appColors.primaryText,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIEND),
                    child: Text(
                    'more',
                    style: TextStyle(
                      color: appColors.primaryText,
                      fontSize: 15,
                    ),
                  ),
                ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: appColors.primaryText,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 300,
                child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, 
                    crossAxisSpacing: 20, mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(90),
                          child: const CircleAvatar(
                            backgroundColor:
                                Colors.amber,
                            radius: 60,
                            foregroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                          ),
                        ),
                        Text(
                          'Muslimah Cute', 
                          style: TextStyle(
                            color: appColors.primaryText
                          ),
                        ),
                      ],
                    );
                })
              )
            ],
          ),
        ),
      ),
    );
  }
}
