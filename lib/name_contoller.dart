import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container nameContainer(TextEditingController name, String text) => Container(
      width: Get.width / 3,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: name,
        decoration: InputDecoration(hintText: text),
      ),
    );
