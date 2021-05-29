person = {
  #値が文字列
  name: 'Alice',
  #値が数値
  age: 20,
  #値が配列
  friends: ['Bob', 'Csalol'],
  #値がハッシュ
  phones: { home: '1234-000', mobile: '5678-0000' }
}

person[:age]                   #=> 20
person[:friends]               #=>["Bob", "Calol"]
person[:phones][:mobile]       #=> "5678-0000"
