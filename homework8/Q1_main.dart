// Q1
void main(){

BankAccount bankAccount = BankAccount();
print(bankAccount.balance);

bankAccount.balance = 1000 ;

print(bankAccount._balance);
print(bankAccount.balance);

bankAccount.balance = -500 ;
print(bankAccount.balance);

}

class BankAccount{
 int _balance = 2;

int get balance => _balance;
 
 set balance(int value){
  if(value < 0){
    print("Invalid balance");
  } else {
    _balance = value;
  }
 }
}