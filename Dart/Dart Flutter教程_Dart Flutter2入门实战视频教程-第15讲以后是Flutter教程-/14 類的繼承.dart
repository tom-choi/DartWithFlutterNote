class Person{
  static String name = 'Tom';
  static num age = 18;
  static void show(){
    print(name);
  }
}

void main(){
  Person.show();
  print(Person.name);
}