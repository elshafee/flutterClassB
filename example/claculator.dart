import 'dart:io';

class Calculator{
 double calculate(){
   int a = 0;
   int b = 0;
   int sum =0;
   int operation = 0;
   print("Please enter the first number: ");
   a = int.parse(stdin.readLineSync()!);
   print("Please enter the second number: ");
   b = int.parse(stdin.readLineSync()!);
   print("Please select the operation");
   print("1=> +,\n2=> -,\n3=> *, \n4=> /,");
   operation = int.parse(stdin.readLineSync()!);
   switch (operation) {
     case 1:
       sum = a + b;
       print(a + b);
       break;
     case 2:
       print(a - b);
       break;
     case 3:
       print(a * b);
       break;
     case 4:
       if(b != 0){
         sum = (a/b).toInt();
         print(a / b);
       }else{
         print("Error");
       }

       break;
     default:
       {
         print(" invalid input");
       }
   }
    return sum.toDouble();
  }
}