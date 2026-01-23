//Q8
void main(){
  //8. a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
Map<String , dynamic >book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99};
//b) Print book['title'], update price, and add a new key 'author'.
print(book['title']);
book['price'] = 25;
book['author']='ali ahmed';
//c) Print all keys, values, and check if 'pages' exists as a key.
print(book.keys);
print(book.values);
print('Contains key "pages": ${book.containsKey('pages')}');


}