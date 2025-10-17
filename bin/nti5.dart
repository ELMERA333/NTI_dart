import 'dart:io';

void displayOptions() {
  print('''
--- Grocery Shopping System ---
Welcome to the Smart Grocery System!
Options:
1. Add New Product
2. Show Products
3. Update Product Quantity
4. Purchase Products
5. Show Invoices
6. Exit
Please choose an option:
''');
}

dynamic handleInput([dynamic Function(String)? casting]) {
  while (true) {
    String input = stdin.readLineSync() ?? '' ;
    if (input.isEmpty) {
      print('Invalid input. Please try again.');
    } else {
      var castedValue = casting == null ? input : casting(input);
      if (castedValue == null) {
        print('Invalid input. Please try again.');
      } else {
        return castedValue;
      }
    }
  }
}

void main() {
  List<Map<String, dynamic>> products = [];
  Map< String, dynamic > invoices = {};
  int invoiceCounter   = 1;

  print ("Welcome to Smart Grocery System");

  while (true) {
    displayOptions();
    print("input => ");
    String choice = handleInput();

    if (choice == '1') {
      print("Enter product name:");
      String name = handleInput();

      print("Enter price:");
      double price = handleInput((val) => double.tryParse(val));

      print("Enter quantity:");
      int qty = handleInput((val) => int.tryParse(val));

      products.add({"name": name, "price": price, "qty": qty});
      print("  Product added successfully!");
    }

    else if (choice == '2') {
      if (products.isEmpty) {
        print(" No products available.");
      } else {
        print(" Products List:");
        for (int i = 0; i < products.length; i++) {
          print("${i + 1}. ${products[i]['name']} - Price: ${products[i]['price']} - Qty: ${products[i]['qty']}");
        }
      }
    }

    else if (choice == '3') {
      print("Enter product name to update:");
      String name = handleInput();
      var product = products.firstWhere(
          (p) => p['name'].toString().toLowerCase() == name.toLowerCase(),
          orElse: () => {});

      if (product.isEmpty) {
        print(" Product not found!");
        continue;
      }

      print("Enter new quantity:");
      int newQty = handleInput((val) => int.tryParse(val));
      product['qty'] = newQty;
      print(" Quantity updated successfully!");
    }

    else if (choice == '4') {
      if (products.isEmpty) {
        print(" No products available to buy.");
        continue;
      }

      print("Enter your name:");
      String customerName = handleInput();
      List<Map<String, dynamic>> cart = [];
      double finalTotal = 0.0;

      while (true) {
        print("Enter product name (or 'done' to finish):");
        String productName = handleInput();
        if (productName.toLowerCase() == 'done') break;

        var product = products.firstWhere(
            (p) => p['name'].toString().toLowerCase() == productName.toLowerCase(),
            orElse: () => {});

        if (product.isEmpty) {
          print(" Product not found!");
          continue;
        }

        print("Enter quantity:");
        int buyQty = handleInput((val) => int.tryParse(val));
        if (buyQty > product['qty']) {
          print(" Not enough quantity in stock!");
          continue;
        }

        double total = product['price'] * buyQty;
        product['qty'] -= buyQty;

        cart.add({
          "name": product['name'],
          "qty": buyQty,
          "price": product['price'],
          "total": total
        });

        finalTotal += total;
        print(" Added $buyQty x ${product['name']} to your cart");
      }

      if (cart.isNotEmpty) {
        invoices["Invoice #$invoiceCounter"] = {
          customerName: cart,
          "final_total": finalTotal
        };
        print(" Your total  = $finalTotal");
        print(" Invoice saved successfully! ");
        invoiceCounter++;
      }
    }

    else if (choice == '5') {
      if (invoices.isEmpty) {
        print(" No invoices yet.");
      } else {
        print(" All Invoices:");
        invoices.forEach((invoiceNum, data) {
          print ("$invoiceNum:");
          String customerName = data.keys.firstWhere((k) => k != "final_total");
          print("Customer: $customerName");
          print("Items:");
          for (var item in data[customerName]) {
            print("- ${item['name']} x${item['qty']} = ${item['total']}");
          }
          print("Total = ${data['final_total']}");
        });
      }
    }

    else if (choice == '6') {
      print(" Thank you for shopping with us!");
      break;
    }

    else {
      print(" Invalid choice, try again!");
    }
  }
}