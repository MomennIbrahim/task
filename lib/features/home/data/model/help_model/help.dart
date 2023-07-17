class Help {

  Help.fromJson(dynamic json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
  }
  int? id;
  String? question;
  String? answer;
}