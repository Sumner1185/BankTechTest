# BankTechTest
First tech test for week 10 

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
![Test_coverage](https://img.shields.io/badge/coverage-97.59%25-green)
![Rspec](https://img.shields.io/badge/Rspec-100%25-green)

* Run tests using `rspec`
* Use `rubocop` to lint code
* Test coverage shown with `simplecov`

### Installation

* Clone this repo to your local machine using `git@github.com:Sumner1185/BankTechTest.git`
* Install dependencies:
```
$ bundle install
```
Then run:
```
$ irb -r './lib/bank_account.rb'
```
This will open the program in irb. Some screenshots to show how the program operates:

<p align="center">
 <img src=images/irb_functions.png width=60%>
</p><br><br>

<p align="center">
 <img src=images/irb_printstatement.png width=60%>
</p><br><br>
