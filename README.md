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

<p align="center>
 <img src="class_diagram.png">
</p><br><br>


                                      
