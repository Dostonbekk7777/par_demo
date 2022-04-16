import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import '../models/emp_cre.dart';
import '../models/emp_list.dart';
import '../models/emp_one.dart';
import '../models/post_model.dart';
import '../models/user_model.dart';

class Network{
  static String BASE = "dummy.restapiexample.com";
  static Map<String, String> headers = {
    'Content-Type': 'application/json; charset=UTF-8'
  };

  /* Http Apis */

static String API_EMP_LIST = "api/v1/employees";
  static String API_EMP_ONE = "api/v1/employee/"; // {id}
  static String API_EMP_CRE = "api/v1/create";
  static String API_EMP_UPDATE = "api/v1/update/"; // {id}
  static String API_EMP_DEL = "api/v1/delete/"; // {id}


/* Http requests */
  static Future<String?> GET(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api, params);
    var response = await get(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  static Future<String?> POST(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api);
    var response = await post(uri, headers: headers,body: jsonEncode(params));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    }
    return null;
  }
  static Future<String?> PUT(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api);
    var response = await put(uri, headers: headers,body: jsonEncode(params));
    if (response.statusCode == 200 ) {
      return response.body;
    }
    return null;
  }

  static Future<String?> DELETE(String api, Map<String, String> params) async {
    var uri = Uri.http(BASE, api, params);
    var response = await delete(uri, headers: headers);
    if (response.statusCode == 200) {
      return response.body;
    }
    return null;
  }

  /* Https Params */

  static Map<String, String>paramsEmpty(){
    Map<String, String> params = new Map();
    return params;
  }

  static Map<String, String> paramsCreate(Post post){
    Map<String, String> params = new Map();

    params.addAll({
      // 'name': post.name,
      // 'age' : post.age,
      // 'salary' :post.salary
    });

    return params;
  }

  static Map<String, String> paramsUpdate(Post user){
    Map<String, String> params = new Map();

    params.addAll({
      // 'salary' : user.salary,
      // 'name': user.name,
      // 'age' : user.age,
    });

    return params;
  }

  /* Http parsing */
  static EmpList parseEmpList(String response){
    dynamic json = jsonDecode(response);
    var data = EmpList.fromJson(json);
    return data;
  }

  static EmpOne parseEmpOne(String response){
    dynamic json = jsonDecode(response);
    var data = EmpOne.fromJson(json);
    return data;
  }

  static EmpCreate parseEmpCre(String response){
    dynamic json = jsonDecode(response);
    var data = EmpCreate.fromJson(json);
    return data;
  }

  static EmpCreate parseEmpUpd(String response){
    dynamic json = jsonDecode(response);
    var data = EmpCreate.fromJson(json);
    return data;
  }
}