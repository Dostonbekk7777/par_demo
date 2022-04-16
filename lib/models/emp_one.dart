import 'emp_model.dart';

class EmpOne{
  var status;
  var massage;
  Employee data;

  EmpOne.fromJson(Map<String, dynamic> json)
      :status = json['status'],
        massage = json['massage'],
        data = Employee.fromJson(json['data']);

  Map<String, dynamic> toJson() => {
    'status' : status,
    'massage' : massage,
    'data' : data.toJson()
  };


}