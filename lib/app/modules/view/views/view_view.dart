import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/view_controller.dart';

class ViewView extends GetView<ViewController> {
  const ViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ViewView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
