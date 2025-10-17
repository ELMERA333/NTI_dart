//high order function  كان طالب فنكشن بتستقبل لست وفنكشن تانيه بتعمل عمليه على عناصر الليست دي
//map 
//vedio21 in playlist
void main() {
  /*
  List<int> numbers = [10, 20, 30, 40];
  numbers = processList(numbers, (int n) => n * 2);
  print(numbers);
*/
/*task
Imagine you’re building a small system to track students and their grades.
Each student has several subjects, and each subject has a grade.

So instead of using a simple list, we can represent the data in a more organized way:

Each student’s name is a key.

Each student’s value is another Map that stores subjects and their grades.


This structure allows you to:

Access a specific student’s grades easily.

Loop through each subject to calculate the total or average.

Apply conditions, like checking if a student passed or failed. */
  List<String> names = ["mera", "arwa", "sara"];
  List<int> numbers = [10, 20, 30, 40];

  List<String> res3 = ["one", "two", "three"];
  List.generate(res3.length,(int index){
    return res3[index].length;
  } );


  for (int i = 0; i < names.length; i++) {
    names[i] = names[i].toUpperCase();

  }
      print(names);
  names = names.map((String item) => item.toUpperCase()).toList();
  names = names.map((String item) => "name is  +$item" ).toList();

  numbers=numbers.map((int item)=>item*2).toList();
  List<String> res = numbers.map((String item)=>"num. is  +$item").toList();




Map <String,Map<String,dynamic>> students = {
  "mera":{"arabic":90 ,
          "math":80};
  "arwa":{"english":70,
          "math"60 :,
          "law":70};
  "marwa":{"english":90,
           "thermo":90 ,
            "law":90};
};
students.addAll({
    "salma": {"math": 85, "english": 75}});
students.remove("arwa");







}
/*
List<int> processList(List<int> n, Function() operation) {
  n = n.map(operation).toList();
  return n;
}
