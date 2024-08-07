import 'dart:convert';

List<StoryModel> listStoryModelFromJson(String str) =>
    List<StoryModel>.from(jsonDecode(str).map((x) => StoryModel.fromJson(x)));

String listStoryModelToJson(List<StoryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class StoryModel {
  StoryModel({
    required this.name,
    required this.body,
    required this.like,
  });

  String name;
  String body;
  bool like;

  factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
        name: json["name"],
        body: json["body"],
        like: json["like"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "body": body,
        "like": like,
      };
}

StoryModel s1 = StoryModel(
  name: "s1",
  body: story1,
  like: false,
);
StoryModel s2 = StoryModel(
  name: "s2",
  body: story2,
  like: false,
);
StoryModel s3 = StoryModel(
  name: "s3",
  body: story3,
  like: false,
);

const story1 =
    "A child asked his father, \"How were people born?\" So his father said, \"Adam and Eve made babies, then their babies became adults and made babies, and so on.\" The child then went to his mother, asked her the same question and she told him, \"We were monkeys then we evolved to become like we are now.\" The child ran back to his father and said, \"You lied to me!\" His father replied, \"No, your mom was talking about her side of the family.\"";
const story2 =
    "Teacher: \"Kids,what does the chicken give you?\" Student: \"Meat!\" Teacher: \"Very good! Now what does the pig give you?\" Student: \"Bacon!\" Teacher: \"Great! And what does the fat cow give you?\" Student: \"Homework!\"";
const story3 =
    "The teacher asked Jimmy, \"Why is your cat at school today Jimmy?\" Jimmy replied crying, \"Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'\"";
const h1 = "A joke a day keeps the doctor away";
const h2 = "If you joke wrong way, your teeth have to pay. (Serious)";
const b1 =
    "This appis created as part of Hlsolutions program. The materials con- tained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infor- mation contained on this site.";
const b2 = "Copyright 2021 HLS";
