

import 'emp_model.dart';

class EmpList{
  String status;
  Null massage;
  List<Employee>  data;

  EmpList.fromJson(Map<String, dynamic> json)
      :status = json['status'],
        massage = json['massage'],
        data = List<Employee>.from(json["data"].map((x) => Employee.fromJson(x)));

  Map<String, dynamic> toJson() => {
    "status" :status,
    "massage" : massage,
    "data" : new List<dynamic>.from(data.map((x) => x.toJson())),
  };
  

}



