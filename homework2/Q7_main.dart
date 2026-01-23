//Q7
void main(){
// a) Start with List numbers = [4, 4, 5, 6, 6, 7]
List<int> numbers =  [4, 4, 5, 6, 6, 7];
//b) Convert it to a Set to remove duplicates and print it.
Set<int> updatnumbers = numbers.toSet();

//Sets automatically remove duplicates - only unique values remain
print(updatnumbers);

//c) Use add(), remove(), and contains() with the set, printing each result.
print(updatnumbers.add(3));
print(updatnumbers.remove(5));
print(updatnumbers.contains(7));
}