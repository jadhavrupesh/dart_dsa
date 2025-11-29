/// Logic Problem 9: Coding Challenge - Encapsulation
///
/// Task: Create a class `BankAccount` with a private variable `_balance`.
/// - Provide a getter `balance`.
/// - Provide a method `deposit(amount)` that adds to balance.
/// - Provide a method `withdraw(amount)` that subtracts if sufficient funds, else prints "Insufficient".

void main() {
  BankAccount acc = BankAccount();
  acc.deposit(100);
  acc.withdraw(50);
  print(acc.balance); // Expected: 50
  acc.withdraw(100); // Expected: Insufficient
}

class BankAccount {
  // TODO: Implement
}
