class UserData {

  UserData.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    account = json['account'] != null ? Account.fromJson(json['account']) : null;
  }
  int? status;
  String? message;
  Account? account;
}

class Account {

  Account.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
  }
  int? id;
  String? name;
  String? phone;

}