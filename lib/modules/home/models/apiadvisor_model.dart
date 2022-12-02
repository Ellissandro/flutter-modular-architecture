class ApiAdvisorModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  ApiAdvisorModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  static List<ApiAdvisorModel> fromJson(json) {
    List<ApiAdvisorModel> items = [];

    for (var element in json) {
      items.add(ApiAdvisorModel(
        userId: element["userId"],
        id: element["id"],
        title: element["title"],
        completed: element["completed"],
      ));
    }
    return items;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data["userId"] = userId;
    data["id"] = id;
    data["title"] = title;
    data["completed"] = completed;

    return data;
  }
}
