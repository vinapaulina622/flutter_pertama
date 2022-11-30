import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pertama/utils/style/AppColors.dart';
import 'package:flutter_pertama/utils/widget/header.dart';
import 'package:flutter_pertama/utils/widget/myfriends.dart';
import 'package:flutter_pertama/utils/widget/sideBar.dart';
import 'package:flutter_pertama/utils/widget/upcomingTask.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'dart:js';


class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
                                  Text(
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
                          SizedBox(
                            // height: Get.height * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'My Task',
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 30,
                                  ),
                                ),
                                  SizedBox(
                                  height: 20,
                                ),
                                //My Task
                                myTask(),
                              ],
                            ),
                          ),
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    children: const [
                                      UpcomingTask(),
                                      MyFriends(),
                                    ],
                                  ),
                                )
                              : const UpcomingTask(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class myTask extends StatelessWidget {
  const myTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                          child: Text(
                        '100%',
                        style: TextStyle(
                          color:
                              AppColors.primaryText,
                        ),
                      )),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                      child: Text(
                    '10/10 Task',
                    style: TextStyle(
                      color: AppColors.primaryText,
                    ),
                  )),
                ),
                const Text(
                  'Pemrograman Internet Lanjut',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                          child: Text(
                        '100%',
                        style: TextStyle(
                          color:
                              AppColors.primaryText,
                        ),
                      )),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                      child: Text(
                    '10/10 Task',
                    style: TextStyle(
                      color: AppColors.primaryText,
                    ),
                  )),
                ),
                const Text(
                  'Pemrograman Internet Lanjut',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                          child: Text(
                        '100%',
                        style: TextStyle(
                          color:
                              AppColors.primaryText,
                        ),
                      )),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                      child: Text(
                    '10/10 Task',
                    style: TextStyle(
                      color: AppColors.primaryText,
                    ),
                  )),
                ),
                const Text(
                  'Pemrograman Internet Lanjut',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(20),
              color: AppColors.cardBg,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(25),
                      child: const CircleAvatar(
                        backgroundColor:
                            Colors.amber,
                        radius: 20,
                        foregroundImage: NetworkImage(
                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width982&height=726&auto=webp'),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 25,
                      width: 80,
                      color: AppColors.primaryBg,
                      child: const Center(
                          child: Text(
                        '100%',
                        style: TextStyle(
                          color:
                              AppColors.primaryText,
                        ),
                      )),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBg,
                  child: const Center(
                      child: Text(
                    '10/10 Task',
                    style: TextStyle(
                      color: AppColors.primaryText,
                    ),
                  )),
                ),
                const Text(
                  'Pemrograman Internet Lanjut',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hari Lagi',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
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
