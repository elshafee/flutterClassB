import 'dart:io';

class ATM {
  var _pincode = 0;
  var name = "";
  var balance = 0;
  var userChoice = 0;
  var money = 0;

  void getUserInformation() {
    print("Welcome to our Bank ATM");
    print("Please Enter Your PIN Code");
    _pincode = int.parse(stdin.readLineSync()!);
    print("Please Enter Your Name");
    name = stdin.readLineSync()!;
    print("Please Enter Your Balance");
    balance = int.parse(stdin.readLineSync()!);
    atmOperation();
  }

  void atmOperation() {
    print("Please Select the operation");
    print(" 1=> Deposit, \n 2=>Withdraw, \n 3=> CheckBalance, \n 5=> Exit");
    userChoice = int.parse(stdin.readLineSync()!);
    switch (userChoice) {
      case 1:
        deposit();
        break;
      case 2:
        withdraw();
        break;
      case 3:
        checkBalance();
        break;
      case 4:
        break;

      default:
        {
          print("invalid input");
          atmOperation();
        }
    }
  }

  void deposit() {
    print("Please enter the money to deposit it");
    money = int.parse(stdin.readLineSync()!);
    balance += money;
    print("Done Successfully");
    checkBalance();
  }

  void withdraw() {
    print("Please enter the amount of money to Withdraw it");
    money = int.parse(stdin.readLineSync()!);
    if (money < balance) {
      balance -= money;
      checkBalance();
    } else {
      print("Can't withdraw your balance isn't enough");
      doYouNeedAnyThing();
    }
  }

  void checkBalance() {
    print("Your Balance is: $balance");
    doYouNeedAnyThing();
  }

  void doYouNeedAnyThing() {
    print("Do you need anything else?");
    print("1=> yes,\n2=> No");
    userChoice = int.parse(stdin.readLineSync()!);
    switch (userChoice) {
      case 1:
        atmOperation();
        break;
      case 2:
        print("Thanks for using our Bank atm");
        break;
      default:
        {
          print("invalid input");
          doYouNeedAnyThing();
        }
    }
  }
}
