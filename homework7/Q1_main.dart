// Q1
// Create a class City with attributes name and population. In main(), create two city objects and
// print their details.
void main(){
City city1 = City();
city1.name = "Giza";
city1.population = 20000000;
City city2 = City();
print('${city1.name}, ${city1.population}');
city2.name = "Alexandria";
city2.population =  5200000;
print('${city2.name},${city2.population}');
}
class City {
  String? name;
  int? population;
}