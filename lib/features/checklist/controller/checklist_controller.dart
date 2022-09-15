import 'package:get/get.dart';

class CheckListController extends GetxController {
  var allList = <Map<String, dynamic>>[
    {
      "title": "List Title",
      "description": "List description",
    },
    {
      "title": "List Title",
      "description": "List description",
    },
    {
      "title": "List Title",
      "description": "List description",
    },
    {
      "title": "List Title",
      "description": "List description",
    },
    {
      "title": "List Title",
      "description": "List description",
    },
  ].obs;

  var completeList = <Map<String, dynamic>>[].obs;

  var showCompleteList = true.obs;
  var showAllList = true.obs;

  addToComplete({required int index}) async {
    completeList.add(allList[index]);
    allList.removeAt(index);
  }

  addToAllList({required int index}) async {
    allList.add(completeList[index]);
    completeList.removeAt(index);
  }
}
