void printInfo()
{
  print('我是一個printInfo函數');
}

String printUserInfo(String username,int age, String sex)
{
  if (age != null)
    return "姓名:$username---性別:$sex--年齡:$age";
  else
    return "姓名:$username---性別:$sex--年齡:保密";
}

fn1()
{
  print('fn1');
}
fn2(fn)
{
  fn();
}

void main()
{
  printInfo();
  printUserInfo('Tom',18,'男');
  fn2(fn1);
}