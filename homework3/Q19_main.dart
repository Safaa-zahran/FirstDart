//Q19
/**Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once */

void main() {
  List<String> names = ['Ahmed', 'Sara', 'Ahmed', 'Omar', 'Sara', 'Ahmed'];
  
  Set<String> uniqueNames = names.toSet();
  

  Map<String, int> counts = {};
  
  for (var name in names) {
    counts[name] = (counts[name] ?? 0) + 1;
  }
  
  print('Counts: $counts');
  
  print('List length: ${names.length}');
  print('Set length: ${uniqueNames.length}');
  
  
  if (counts.values.last > 1) {
    print('${counts.keys.last} appears more than once!');
  }
}