import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:zens_company_test/story_model.dart';

class SharedPrefService {
  static final SharedPrefService _instance = SharedPrefService._internal();

  SharedPrefService._internal();

  factory SharedPrefService() => _instance;

  saveListModel(String key, List<StoryModel> listStoryModel) async {
    var sharedPref = await SharedPreferences.getInstance();
    String value = listStoryModelToJson(listStoryModel);
    log(value.toString(), name: "ListData");
    await sharedPref.setString(key, value);
  }

  clearListModel(String key) async {
    var sharedPref = await SharedPreferences.getInstance();
    await sharedPref.remove(key);
  }

  Future<List<StoryModel>?> getListModel(String key) async {
    var sharedPref = await SharedPreferences.getInstance();
    String? value = sharedPref.getString(key);
    log(value.toString(), name: "ListData");
    if (value != null) {
      List<StoryModel> storyModel = listStoryModelFromJson(value);
      return storyModel;
    } else {
      return null;
    }
  }
}
