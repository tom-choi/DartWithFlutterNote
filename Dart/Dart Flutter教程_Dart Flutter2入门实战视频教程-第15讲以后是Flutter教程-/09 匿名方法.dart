void main()
{
  var printNum=(int n)
  {
    print(n+2);
  };

  print(printNum(5));

  ((int n){
    print(n);
    print('我是自執行方法');
  }(12));
  
}