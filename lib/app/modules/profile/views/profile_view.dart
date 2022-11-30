import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_pertama/app/modules/home/views/home_view.dart';
import 'package:flutter_pertama/app/routes/app_pages.dart';
import 'package:flutter_pertama/utils/widget/profileWidget.dart';

import 'package:get/get.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter_pertama/utils/style/AppColors.dart';
import 'package:flutter_pertama/utils/widget/header.dart';
import 'package:flutter_pertama/utils/widget/sideBar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
final GlobalKey<ScaffoldState> _drawerKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
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
                                children: const [
                                    Text (
                                    'Task Management',
                                    style: TextStyle(
                                        fontSize: 21,
                                        color: AppColors.primaryText),
                                        ),
                                    Text(
                                    'Manage task made easy with friends',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.primaryText),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Sign Out',
                  content: const Text('Are You Sure Want to Sign Out'),
                  cancel: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Cancel'),
                  ),
                  confirm: ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN), 
                    child: const Text('Sign Out'),
                  ),
                );
              },
              child: Row(
                children: const [
                  Text('Sign Out',
                      style: TextStyle(
                          color: AppColors.primaryText, 
                          fontSize: 16)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.logout_outlined,
                      color: AppColors.primaryText, size: 30),
                ],
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileWidget(),
                                  Text(
                                  'My Task',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 20, 
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                        SizedBox(height: Get.height *0.3,child: const myTask(),),  
                      ],),
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
