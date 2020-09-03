Bank Tech test is a small project designed to practice code quality, test-driven development and process. It has been completed as a Ruby implementation.

I have also done an implementation in JavaScript/Node **[available here]**.

The application allows you to create an account, deposit funds into it, withdraw from it, and print statements that capture the account history and print to the screen.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB.
* Deposits, withdrawals.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory.

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Time Frame

Work on this test until close of play tomorrow

### Initial Class Diagram

<p align="center">
 <img src=images/class_diagram.png width=60%>
</p><br><br>

### My Approach

My initial approach was to think about what different classes I would like to have and how they would interact with each other. In the end I decided to have:

1. BankAccount
2. Activity
3. Transaction
4. Date
5. Statement

I felt that to have my main BankAccount class responsible for formatting the date, or formatting the output of printing the statement would violate the DRY principle. All of my classes were tested separately and independently to ensure isolation.

The main area that I struggled with regard to my tests were the output of the print method within Statement as well as full features tests that also need to test the output of print_statement to stdout.

### Testing
![Test_coverage](https://img.shields.io/badge/coverage-100%25-green)

* Run tests using `rspec`
* Use `rubocop` to lint code
* Test coverage shown with `simplecov`

### Installation

* Clone this repo to your local machine using `git@github.com:Sumner1185/BankTechTest.git`
* Install dependencies:
```
$ bundle install
```
### To run the program:
```
$ cd BankTechTest
```
Then open within `irb`:
```
$ irb -r './lib/bank_account.rb'
```
Create a new bank account:
```
> account = BankAccount.new
```
To make a deposit of 1000:
```
> account.deposit(1000)
```
To make a deposit of 2000:
```
> account.deposit(2000)
```
To make a withdrawal of 500:
```
> account.withdraw(500)
```
To print statement:
```
> account.print_statement
```
This will produce the following output in line with acceptance criteria:

<p align="center">
 <img src=images/irb_functions.png width=110%>
</p><br><br>


<!-- project link -->
[available here]: https://github.com/Sumner1185/bankTechTest_JavaScript
