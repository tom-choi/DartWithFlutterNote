import 'lib/Animal.dart';

void main(){
  Animal a = new Animal('Sam', 18);
  //print(a._name); 無法訪問
  print(a.age);
  a.printInfo();
}