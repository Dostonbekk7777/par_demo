class EmployeeCreate {

 String name;
 String age;
 String salary;
 int  id;

 EmployeeCreate.fromJson(Map<String, dynamic> json)
      :id = json["id"],
       name = json["name"],
       age = json["age"],
       salary = json['salary'];

  Map<String, dynamic> toJson() => {
    "id" : id,
    'name' : name,
    'age' : age,
    'salary' : salary
  };
}