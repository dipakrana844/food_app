import 'dart:convert';

// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));
//
// String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Food {
  Food({
    required this.message,
    required this.data,
    required this.count,
    required this.responseCode,
  });

  String message;
  String data;
  String count;
  String responseCode;

// factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//   message: json["message"],
//   data: json["data"],
//   count: json["count"],
//   responseCode: json["response_code"],
// );

// Map<String, dynamic> toJson() => {
//   "message": message,
//   "data": data,
//   "count": count,
//   "response_code": responseCode,
// };
}
