void main()
{
  String price = '';
  try
  {
    var myNum = double.parse(price);
    print(myNum);
  }
  catch(err){
    print(0);
  }


  var myNum = 12;
  var str = myNum.toString();
  print(str);
}