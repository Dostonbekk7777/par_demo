import 'package:flutter/material.dart';
class DetailPage extends StatefulWidget {
  String name;
  int age;
  int salary;
  static final String id = 'detail_page';
  DetailPage({required this.name,required this.age, required this.salary});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child:
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(widget.name+"("+widget.age.toString()+")",style: TextStyle(color: Colors.black,fontSize: 20),),
               SizedBox(height: 10,),
               Text(widget.salary.toString()+"\$",style: TextStyle(color: Colors.black,fontSize: 18),),
             ],
           ),),
    );
  }
}
