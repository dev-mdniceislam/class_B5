import 'package:class_practice/feature/firstPage.dart';
import 'package:get/get.dart';

class AppRouter {
  List<GetPage<dynamic>> route = [GetPage(name: "/", page: () => Firstpage())];
}
