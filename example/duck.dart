import 'anima.dart';
import 'bird.dart';

class Duck extends Bird with Animal{
  void eat(){
    print("Duck Can eat");
  }
@override
  void fly(){
    print("Duck Can't Fly");
  }
}