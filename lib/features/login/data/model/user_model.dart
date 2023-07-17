class UserModel{
  int? statusCode;
  String? message;
  String? code;

  UserModel.fromJson(Map<String,dynamic> json){
    message = json['message'];
    code = json['code'];
    statusCode = json['status'];
  }
}