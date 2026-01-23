//Q17

/**Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results */

void main (){
  int price = 150;
  int price2 = 75;
  String currency = 'EGP';

  String priceFormatedToStg = price.toString();
  String priceFormatedToStg2 = price2.toString();
  print(priceFormatedToStg);
  print(priceFormatedToStg2);

  String paddedPrice = priceFormatedToStg.padLeft(5,' ');
  String paddedPrice2 = priceFormatedToStg2.padLeft(5,' ');
  print('$paddedPrice $currency');
  print('$paddedPrice2 $currency');

  String tag = '$currency $priceFormatedToStg';
  String tag2 = '$currency $priceFormatedToStg2';
  print(tag);
  print(tag2);
  print(tag.length);
  print(tag2.length);
  
  if (tag.length > tag2.length) {
    print('\nFirst tag is longer');
  } else {
    print('\nSecond tag is longer');
  }

}