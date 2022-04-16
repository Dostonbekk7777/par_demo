import 'employee_create_model.dart';

class EmpDel{
  var status;
  var massage;
  EmployeeCreate data;


  EmpDel.fromJson(Map<String, dynamic> json)
      :status = json['status'],
        massage = json['massage'],
        data = EmployeeCreate.fromJson(json['data']);

  Map<String, dynamic> toJson() => {
    'status' : status,
    'massage' : massage,
    'data' : data.toJson()
  };

}