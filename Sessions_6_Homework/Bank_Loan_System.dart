/*
Bank Loan Processing System
Abstract Class: Loan
Create an abstract class Loan with the following properties and methods:
- borrowerName (String)
- loanAmount (double)
- interestRate (double)
- Abstract method: double calculateMonthlyInstallment(int months).
Loan Subclasses
Three types of loans should be implemented:
- PersonalLoan: Has a fixed 10% interest rate.
- HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
- CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee.
LoanProcessingSystem Class
Create a LoanProcessingSystem class that:
- Stores a list of loans.
- Provides methods to:
- applyLoan(Loan loan): Adds a loan application to the system.
- calculateInstallments(int months): Calculates the monthly installment for all loans.
*/

import 'dart:math';

abstract class Loan {
  String borrowerName;
  double loanAmount;
  double? interestRate;

  Loan(this.borrowerName, this.loanAmount);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount) {
    interestRate = 10.0;
  }

  @override
  double calculateMonthlyInstallment(int months) {
      return (loanAmount + (loanAmount * interestRate!/100)) / months;
    
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount) {
    interestRate = (loanAmount > 500000) ? 9.5 : 8.0;
  }

  @override
  double calculateMonthlyInstallment(int months) {
    return (loanAmount + (loanAmount * interestRate!/100)) / months;
  }
}

class CarLoan extends Loan {
  double processingFee = 0.0;

  CarLoan(String borrowerName, double loanAmount)
    : super(borrowerName, loanAmount) {
    interestRate = 7.0;
    if (loanAmount > 50000) {
      processingFee = loanAmount * 0.02;
    }
  }

  @override
  double calculateMonthlyInstallment(int months) {
    double totalAmount = loanAmount + processingFee;
    return (totalAmount + (loanAmount * interestRate!/100)) / months;
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];

   void applyLoan(Loan loan) {
    loans.add(loan);
    print("Loan applied Successfully");
  }

  void calculateInstallments(int months) {
    for (var loan in loans) {
      double installment = loan.calculateMonthlyInstallment(months);
      print(
        "Borrower Name : ${loan.borrowerName} | installment for  $months months: ${installment.toStringAsFixed(2)}",
      );
    }
  }
}

void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan("Asaad", 100000));
  system.applyLoan(HomeLoan("Hana", 600000));
  system.applyLoan(CarLoan("Yousef", 60000));

  print("\n Installments for 24 months ");
  system.calculateInstallments(36);
}
