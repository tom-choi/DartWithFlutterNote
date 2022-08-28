bool isEvenNumber(value)
{
  return value % 2 == 0;
}

List printEvenNumberInN(n)
{
  var list = [];
  for (var i = 0;  i <= n; i+= 2)
  {
    list.add(i);
  }
  return list;
}


void main()
{
  // List list = ['香港','澳門','台灣'];
  // list.forEach(
  //   (value)
  //   {print(value);}
  //   );
  
  // list.forEach((element)=>print(element));

  // list.forEach((element)=>{
  //   print(element)
  //  }); //無分號

   List list2 = [1,2,3,4];
  
   var newlist = list2.map((value)
   {
     if (value > 2)
     {
       return value *2;
     }
     return value;
   });
   print(newlist.toList());

   var newlist2 = list2.map((value)=>{value>2 ? value*2:value});
   print(newlist2);

  print(isEvenNumber(2));
  print(isEvenNumber(3));
  print(isEvenNumber(4));

  print(printEvenNumberInN(10));

}