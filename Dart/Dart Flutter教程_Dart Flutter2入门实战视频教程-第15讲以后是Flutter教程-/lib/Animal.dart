class Animal{
  String _name; // private 私有
  int age; //public 公有
  Animal(this._name,this.age);
  void printInfo(){
    print("${this._name} -- ${this.age}");
  }
}