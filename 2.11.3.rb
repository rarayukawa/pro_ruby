a= 'ruby'

#upcaseだと変数aの値は変化しない
puts a.upcase
puts a

#upcase!だと変数aの値も大文字に変わる
puts a
puts a.upcase!
puts a


def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
puts reverse_upcase!(s)
puts s