import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;


void main() {
String name = "mariam";
int age = 23 ;
bool isGender = false ;
String tall = "170.0" ;
double t = double . tryParse(tall)??0;
print ( "my name is $name and my gender is ${isGender?"male":"female" }  my AGE is $age ${t==0?"":"and my height is $tall"}" );
  
  
  int degree = 90;
  if (degree ==0){
    print ("zero");
  }
  else if(degree>0 && degree<50) {
    print ("failed"); 
  }
   else if(degree>50 && degree<60) {
    print ("D"); 
  }
   else if(degree>60 && degree<70) {
    print ("c"); 
  }
   else if(degree>70 && degree<80) {
    print ("b"); 
  } else if(degree>80 && degree<90) {
    print ("a"); 
  }
   else if(degree>90 ) {
    print ("exellent"); 
  }
}
