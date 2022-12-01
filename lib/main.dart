
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void>main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    StreamBuilder(
      
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
      return GetMaterialApp(
      debugShowCheckedModeBanner: false, 
      title: "Application",
      initialRoute: snapshot.data !=null? Routes.HOME : Routes.LOGIN,
      getPages: AppPages.routes, 
    );
  },
));
}
