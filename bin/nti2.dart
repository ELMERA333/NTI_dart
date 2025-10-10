void main() {
  //String x = "ahmed ";
  //startswith()
  //endswith()
  //trim ()
  //trimleft()
  //trimrightبيشيل المسافات اللى جمب النص  من اليميمن
  //Split(" ") بتقسم الكلمات الكتير ل ليست عن طريق فاصل معين انت بتحطه
  // print (x . Split(" "))
  //indexOf("a , 2")    كدا بيبدا يبحث من الحرف 2 (تديني مكانه فين في الكلمه (بكتب حرف او كلمه
  //x[4] جيجيبلى الحرف الموجود ف الممكان الرابع
  //x[x.length-1]
  //x.toUpperCase
  //x.toLowerCase
  String x = " ahmed , mohamed , ali ";
  print(x.split(",")[0].trim());
  //block
  /*task 


  String day = "الخميس";
  switch (day) {
    case "الاحد":
    case "الاثنين":
    case "الثلاثاء":
    case "الاربعاء":
    case "الخميس":
      print("دوام عادي ");

    case "الجمعة":
    case "السبت":
      print(" اجازة ");
  }
  */
  //////////////////////////////////////////////////////////////
  ///tas2 
  /*Problem 1: Multi-Tier Parking Fee Calculator

First 2 hours: free

Hours 3–5: 10 per hour

After that: 20 per hour

+50 flat if parked on weekend

🔹 Problem 2: Traffic Fine Calculator

User inputs speed limit, actual speed, and if they have a license

Speed more than 20 = fine 1000

Speed over by 1–20 = fine 500

No license? Add 500 to the fine */
  int hours = 6;
  int price;
  int f;
  hours = hours - 2;
  String day = "الخميس";
  switch (day) {
    case "الجمعة":
    case "السبت":
      day="اجازه"  ; 
    Default:
      day="دوام";   
  }
  if (hours > 3) {
    f=hours-3;
    price = (f * 20 )+30 ;
      if ( day=="اجازه"){
    price=price+50;
    print('/$price');
      }else{
      print('/$price');
  }
  }
  else ( hours < 4 ) {
    price = hours * 10;
      if ( day=="اجازه"){
    price=price+50;
    print('/$price');
    }else{
      print('/$price');
     }
  };
////////////////////////////////////////////////////////////////////////


}
