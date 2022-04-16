import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:par_demo/detail_page.dart';
import 'package:par_demo/models/emp_one.dart';
import 'package:par_demo/models/employee_create_model.dart';
import 'package:par_demo/models/post_model.dart';
import 'package:par_demo/services/http_network.dart';

import 'models/emp_cre.dart';
import 'models/emp_list.dart';
import 'models/emp_model.dart';
class HomePage extends StatefulWidget {


  static final String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {



  // List<Employee> items = [];       Emp list uchun kerak




  void _apiDeletePost(Post post){
    Network.DELETE(Network.API_EMP_DEL + post.id.toString(), Network.paramsEmpty()).then((response) => {
      print(response),
      _showResponse(response!),

    });
  }

  _showResponse(String response){


    setState(() {
    });
  }






  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var post = Post(id:2,);
    _apiDeletePost(post) ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
      )
    );
  }








  // ListView.builder(
  // itemCount: items.length,
  // itemBuilder: (ctx, i){                   // #all employees list
  // return itemOfList(items[i]);
  // },
  // ),


  // name = empone.data.employee_name;
  // age = empone.data.employee_age;           // Emp one da setState uchun ishaltiladi
  // salary = empone.data.employee_salary;

  Widget itemOfList(Employee emp) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context){
          return new DetailPage(age:emp.employee_age,salary: emp.employee_salary,name:emp.employee_name,);
        }));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(bottom: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(emp.employee_name+"("+emp.employee_age.toString()+")",style: TextStyle(color: Colors.black,fontSize: 20),),
            SizedBox(height: 10,),
            Text(emp.employee_salary.toString()+"\$",style: TextStyle(color: Colors.black,fontSize: 18),),
          ],
        ),
      ),
    );
  }
}





// void _apiEmpList() {
//   Network.GET(Network.API_EMP_LIST, Network.paramsEmpty()).then((response) => {
//     _showResponse(response!)
//   });
// }

// void _apiCreatePost(Post post){
//   Network.POST(Network.API_EMP_CRE, Network.paramsCreate(post)).then((response) => {
//     print(response),
//     _showResponse(response!),
//
//
//   });
// }



//
// void _apiUpdate(Post post) {
//   Network.PUT(Network.API_EMP_UPDATE + post.id.toString(), Network.paramsUpdate(post)).then((response) => {
//     print(response),
//     _showResponse(response!)
//   });
// }
//
// _showResponse(String response){
//
//
//   setState(() {
//   });
// }
