import 'dart:io';

void main() {
  print('ما هو حد السرعة اللى مسموح لك؟');
  int limit = int.parse(stdin.readLineSync()!.trim());

  print('سرعتك الفعلية كام؟');
  int speed = int.parse(stdin.readLineSync()!.trim());

  print('معاك رخصة؟ (y/n)');
  String r = stdin.readLineSync()!.trim().toLowerCase();
  bool hasLicense = (r == 'y');

  int fine = 0;
  int over = speed - limit;


  int category;
  if (over <= 0) {
    category = 0;
  } else if (over <= 20) {
    category = 1;
  } else {
    category = 2;
  }

  switch (category) {
    case 0:
      fine = 0;
      break;

    case 1:
      fine = 500;
      break;

    case 2:
      fine = 1000;
      break;

    default:
      fine = 0;
  }

  if (!hasLicense) {
    fine += 500; 
  }

  print('الزيادة عن الحد: ${over > 0 ? over : 0} كم/س');
  print('المجموع النهائي للغرامة: \$${fine}');
}
