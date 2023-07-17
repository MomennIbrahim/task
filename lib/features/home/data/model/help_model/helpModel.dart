import 'help.dart';

class HelpModel {

  HelpModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['help'] != null) {
      help = [];
      json['help'].forEach((v) {
        help?.add(Help.fromJson(v));
      });
    }
  }

  int? status;
  String? message;
  List<Help>? help;

}