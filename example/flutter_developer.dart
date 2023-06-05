import 'NDA.dart';
import 'company.dart';
import 'contract.dart';

class FlutterDeveloper extends Company implements NDA, Contract {
  @override
  void bandNumberOne() {
    print("Band Number one");
  }

  @override
  void benfits() {
    print("You have 6000 EGP Extra per Month");
  }

  @override
  void daysOff() {
   print("You have 3 days OFF");
  }

  @override
  void dontShareThecontentWithAnyone() {
    // TODO: implement dontShareThecontentWithAnyone
  }

  @override
  void netSallary() {
    // TODO: implement netSallary
  }

  @override
  void workingHours() {
    // TODO: implement workingHours
  }
}
