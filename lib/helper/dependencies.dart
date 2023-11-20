import 'package:get/get.dart';
import 'package:untitled/controller/repo_controller.dart';

Future<void> init() async {
  Get.lazyPut(()=>RepoController(dio: Get.find()));
}