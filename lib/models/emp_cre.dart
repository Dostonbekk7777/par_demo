import 'package:par_demo/models/employee_create_model.dart';

class EmpCreate{
  var status;
  var massage;
  EmployeeCreate data;


  EmpCreate.fromJson(Map<String, dynamic> json)
      :status = json['status'],
        massage = json['massage'],
        data = EmployeeCreate.fromJson(json['data']);

  Map<String, dynamic> toJson() => {
    'status' : status,
    'massage' : massage,
    'data' : data.toJson()
  };

}