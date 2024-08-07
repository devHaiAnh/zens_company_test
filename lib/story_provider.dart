import 'package:flutter/foundation.dart';
import 'package:zens_company_test/shared_pref_service.dart';

import 'story_model.dart';

class StoryProvider with ChangeNotifier, DiagnosticableTreeMixin {
  List<StoryModel> listData = [];

  getListData() async {
    listData =
        await SharedPrefService().getListModel("listData") ?? [s1, s2, s3];
    notifyListeners();
  }

  clearListData() async {
    listData = [s1, s2, s3];
    await SharedPrefService().clearListModel("listData");
    notifyListeners();
  }

  saveListData() async {
    await SharedPrefService().saveListModel("listData", listData);
  }

  int index = 0;
  bool showDialog = false;

  Future<void> like() async {
    index++;
    listData[index - 1].like = true;
    if (index > (listData.length - 1)) {
      index = 0;
      showDialog = true;
      await SharedPrefService().saveListModel("listData", listData);
      notifyListeners();
    } else {
      showDialog = false;
      notifyListeners();
    }
  }

  Future<void> dislike() async {
    index++;
    listData[index - 1].like = false;
    if (index > (listData.length - 1)) {
      index = 0;
      showDialog = true;
      await SharedPrefService().saveListModel("listData", listData);
      notifyListeners();
    } else {
      showDialog = false;
      notifyListeners();
    }
  }
}
