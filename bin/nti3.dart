//map
//arrow function
//list 
//filled
//generate function
//high order function


/* 
Print all numbers between two inputs

Sum of first N natural numbers

Count even and odd numbers

Rectangle of stars using nested loops

Right-angled triangle pattern
*/

void main() {
  for (int i = 10; i <= 20; i++) print(i);

  ///////////////////
  int sum = 0;
  var n = 20;

  for (int first = 10; first <= n; first++) {
    sum = sum + first;
  }
  print(sum);
  //////////////////
  ///////////////////
  ///////////////////
  //////////////////
/*
Task: Favorite Fruits

Goal:
Practice creating, updating, and reading from a list.


---

💡 Instructions:

1. Create a list of your 5 favorite fruits:

var fruits = ['Apple', 'Banana', 'Mango', 'Orange', 'Grapes'];


2. Print the whole list.


3. Print the first and last fruit only.


4. Add a new fruit to the end of the list.


5. Insert one fruit at index 2.


6. Remove one fruit by name.


7. Print how many fruits are left in the list using .length.


8. Use a for loop to print each fruit on a new line.


🧠 Bonus Challenge (optional):

Ask the user to enter a fruit name (you can hardcode it for now).

Check if the fruit exists in the list using .contains().

If it exists → print "Yes, it's in the list!"

Else → print "No, not found."
*/
void main() {
  var fruits = ['Apple', 'Banana', 'Mango', 'Orange', 'Grapes'];
  print(fruits);
  print(fruits.first);
  print(fruits.last);
  fruits.add('Pineapple');
  fruits.insert(2, 'Kiwi');
  fruits.remove('Banana');
  print(fruits.length);
  for (var fruit in fruits) {
    print(fruit[0]);
  }

  String fruitName = 'peach';
  if (fruits.contains(fruitName)) {
    print("Yes, it's in the list!");
  } else {
    print("No, not found.");
  }
}


































}
