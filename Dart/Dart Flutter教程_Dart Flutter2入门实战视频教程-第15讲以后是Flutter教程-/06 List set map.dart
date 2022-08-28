void main()
{
  var l1 = ['香港','澳門','台灣',true,12];
  print(l1);
  print(l1.length);
  l1.add('中國');
  print(l1);
  print(l1.length);

  List l3 = List.filled(2, "");
  print(l3);
  print(l3.length);

  var str = "香港,澳門,台灣";
  var list = str.split(',');
  print(list);
  
}