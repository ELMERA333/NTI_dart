import 'dart:io';

//ATM
void main() {
  int balance = 1000;

  print("Welcome to Simple ATM");
  print("Your starting balance is $balance");

  while (true) {
    print("\nChoose an option:");
    print("1. Check Balance");
    print("2. Withdraw");
    print("3. Deposit");
    print("4. Exit");
    /*
    print('''
      \nChoose an option:
      1. Check Balance
      2. Withdraw
      3. Deposit
      4. Exit

''');
    
    
     */
    print("Enter choice: ");
    String? choice = stdin.readLineSync();
//    String choice = stdin.readLineSync() ?? 
//0 ; كدا عملته ديفولت فاليو 

    if (choice == "1") {
      print("Your current balance is $balance");
    } else if (choice == "2") {
      print("Enter amount to withdraw: ");
      int? amount = int.tryParse(stdin.readLineSync()!);

      if (amount == null || amount <= 0) {
        print("Invalid amount");
      } else if (amount > balance) {
        print("Insufficient balance! Your current balance is $balance");
      } else {
        balance = balance - amount;

        print("Withdrawal successful! Your current balance is $balance");
      }
    } else if (choice == "3") {
      print("Enter amount to deposit: ");
      int? amount = int.tryParse(stdin.readLineSync()!);

      if (amount == null || amount <= 0) {
        print("Invalid amount");
      } else {
        balance += amount;
        print("Deposit successful! Your current balance is $balance");
      }
    } else if (choice == "4") {
      print("Thank you for using the ATM!");
      break;
    } else {
      print("Invalid choice. Please select between 1–4.");
    }
  }
}
