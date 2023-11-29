import 'package:appwrite/appwrite.dart';
import 'package:cake_baru/app/modules/home/controllers/ClientController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DatabaseController extends ClientController {
  Databases? databases;
  @override
  void onInit() {
    super.onInit();
// appwrite
    databases = Databases(client);
  }

  Future storeUserName(Map map) async {
    try {
      final result = await databases!.createDocument(
        databaseId: "656603c41c0e2873e3dc",
        documentId: ID.unique(),
        collectionId: "65660404d9434def9d6c",
        data: map,
        permissions: [
          Permission.read(Role.user("6566012d95287b470cea")),
          Permission.update(Role.user("6566012d95287b470cea")),
          Permission.delete(Role.user("6566012d95287b470cea")),
        ],
      );
      print("DatabaseController:: storeUserName $databases");
    } catch (error) {
      Get.defaultDialog(
        title: "Error Database",
        titlePadding: const EdgeInsets.only(top: 15, bottom: 5),
        titleStyle: Get.context?.theme.textTheme.titleLarge,
        content: Text(
          "$error",
          style: Get.context?.theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        contentPadding: const EdgeInsets.only(top: 5, left: 15, right: 15),
      );
    }
  }
}
