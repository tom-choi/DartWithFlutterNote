class Person{
  String name = "張三";
  int age = 23;

  void getInfo(){
    print("${this.name}---${this.age}");
  }
  void setInfo(int age){
    this.age = age;
  }

  //構造函數
  // Person(String name, int age){
  //   print('我是構造函數');
  //   this.name = name;
  //   this.age = age; 
  // }

  //簡寫
  Person(this.name,this.age)
  {
    print('我是構造函數');
  }
}