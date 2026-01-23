//Q16

/**Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions */


void main(){

int totalSessions = 1;
int study = 3;
int fines = 50;

bool veryGood = totalSessions >= 7;
bool good = study >= 0;
bool fine = fines >= 20;

print(veryGood);
print(good);
print(fine);

bool canBorroW = veryGood && good && fine;

if(canBorroW){
  print('Rule passed');
} else {
  print( 'Rule failed');
}

}