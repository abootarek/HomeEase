// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  String fullName;
  String phone;
  String password;
  String type;
  String uId;

  RegisterRequestBody({required this.fullName, required this.password,required this.type, required this.uId,required this.phone});

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}