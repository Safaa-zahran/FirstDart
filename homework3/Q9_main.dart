//Q9
void main(){
  // Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
// count with the original list length and print a message if duplicates were removed

List<int> numbers = [1,2,7,9,3,7,9,2];
Set<int> uniqueNumbers = numbers.toSet();
List<int>uniquelist = uniqueNumbers.toList();
print(numbers.length);
print(uniquelist.length);
print(uniqueNumbers);

if (numbers.length>uniquelist.length){
  print("duplicates were removed");
}
else{
  print("No duplicates found.");
}

}