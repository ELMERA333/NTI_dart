import 'dart:io';
/*
Task 1: Theater Booking System
Requirements:

A 2D array represents the theater seats (5x5 for example).
Each seat is either empty (E) or booked (B) .
When a user books a seat, they provide:
Name
Phone number
Check if the seat is available before booking.
Store booking details in a map (seat_position -> user data).
Allow multiple users to book seats until they choose to exit.
At the end, print the seat layout and the booking list .
Example For Run:
"Welcome To Our Theater" 

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>2
Theater Seats:
E E E E E
E E E E E
E E E E E
E E E E E
E E E E E

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>1
Enter row (1-5) or 'exit' to quit: 
input=>3
Enter column (1-5): 
input=>4
Enter your name: 
input=>Ahmed
Enter your phone number: 
input=>010456755555
Seat booked successfully!

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>2
Theater Seats:
E E E E E
E E E E E
E E E B E
E E E E E
E E E E E


press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>3

Users Booking Details:
Seat 3,4: Ahmed - 010456755555

press 1 to book new seat
press 2 to show the theater seats
press 3 to show users data
press 4 to exit
input=>4

"See You Back"
 */
void main() {
 
  List <List<String>>  theater = List.generate(5, (_) => List.filled(5, 'E'));
 
  Map < String , Map<String, String   >> bookings  = {};

  print ("  Welcome To Our Theater ") ;

  while (true) {
    print ("press 1 to book new seat" );
    print("press 2 to show the theater seats") ;
    print ("press 3 to show users data");
    print("press 4 to exit");

      print("input => ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
        print ("Enter  (1-5) or 'exit' to quit: ");
      String? rowInput = stdin.readLineSync();
      if (rowInput == 'exit') continue;

        print("Enter column (1-5): ");
      String? colInput = stdin.readLineSync();

      if (rowInput == null || colInput == null) continue;

      int row = int.parse(rowInput) - 1;
      int col = int.parse(colInput) - 1;

      if (row < 0 || row >= 5 || col < 0 || col >= 5) {
        print("Invalid seat position");
        continue;
      }

      if (theater[row][col] == 'B') {
        print (" Seat already booked  ");
      } else {
          print("Enter your name: ");
        String? name = stdin.readLineSync();

          print("Enter your phone number: ");
        String? phone = stdin.readLineSync();

        theater[row][col] = 'B';
        bookings['${row + 1},${col + 1}'] = {
          'name': name ?? '',
          'phone': phone ?? ''
        };

        print(" Seat booked successfully     ");
      }
    } else if (choice == '2') {
      print(" Theater Seats:");
      for (var row in theater) {
        print(row.join(' '));
      }
    } else if (choice == '3') {
      print(" Users Booking Details:");
      if (bookings.isEmpty) {
        print("No bookings yet.");
      } else {
        bookings.forEach((seat, data) {
          print("Seat $seat: ${data['name']} - ${data['phone']}");
        });
      }
    } else if (choice == '4') {
      print(" See You Back  ");
      break;
    } else {
      print("  Invalid choice ");
    }
  }
}
