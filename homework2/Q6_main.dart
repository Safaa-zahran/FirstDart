//Q6
void main(){
  //6. a) Create List animals with three values.
List<String> animals = ['Dog','Cat','Duck'];
//b) Add a new animal, remove the last one, and update the second element.
animals.add('donkey');
animals.removeLast();
animals[1]='lion';
//c) Print animals.first, animals.last, and animals.length.
print(animals.first);
print(animals.last);
print(animals.length);



}