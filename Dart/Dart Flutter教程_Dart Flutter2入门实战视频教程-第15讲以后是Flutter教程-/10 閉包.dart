void main()
{
  fn(){
    var a = 123;
    return(){
      a++;
      print(a);
    };
  }

  var b = fn();
  b();
  b();
  b();
}