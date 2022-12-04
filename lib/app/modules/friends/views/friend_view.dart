import 'package:flutter/material.dart';
import 'package:flutter_pertama/utils/widget/myfriends.dart';

import 'package:get/get.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter_pertama/utils/style/AppColors.dart';
import 'package:flutter_pertama/utils/widget/header.dart';
import 'package:flutter_pertama/utils/widget/sideBar.dart';

import '../controllers/friend_controller.dart';

class FriendView extends GetView<FriendController> {
final GlobalKey<ScaffoldState> _drawerKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150, child: SideBar()),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(
                    flex: 2,
                    child: SideBar(),
                  )
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(Icons.menu,
                                    color: AppColors.primaryText),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: AppColors.primaryText),
                                  ),
                                  const Text(
                                    'Manage task made easy with friends',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.primaryText),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(Icons.notifications,
                                  color: AppColors.primaryText, size: 30
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
                                      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                                ),
                              ),
                            ],
                          ),
                        ),
                  //content / isi page / screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(50)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const Text(
                          'People You May Know', 
                          style: 
                          TextStyle(
                            fontSize: 30, 
                            color: AppColors.primaryText,
                            ),
                          ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            clipBehavior: Clip.antiAlias,
                            itemCount: 10,
                            itemBuilder: (context, index){
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: const Image(
                                      height: 90,
                                      image: NetworkImage(
                                          'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 10,
                                    left: 50,
                                    child: Text(
                                      'Alicia Jasmin', 
                                  style: TextStyle(color: Colors.white ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: SizedBox(
                                    height: 36,
                                    width: 36,
                                    child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(borderRadius: 
                                      BorderRadius.circular(50),
                                      ),
                                    ),
                                child: 
                                  const Icon(Icons.add_circle_outline),
                                ),
                                  )
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                        const MyFriends(),
                      ]),
                    ),
                  ),
                ]),
            ),
          ],
        ),
      ),
    );
  }
}
