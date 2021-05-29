:apple.class   #=> Symbol
'apple'.class  #=> String

#シンボルはRubyの内部で整数として管理される
#文字列よりもじんぼるの方が早く比較できる
:apple == :apple
'apple' == 'apple'

#同じシンボルであれば全く同じシンボルである（文字列よりメモリ使用効率が良い）
#同じオブジェクトがあるかどうかはobject_idを調べればわかる
:apple.object_id  #=> 1143388
:apple.object_id  #=> 1143388
:apple.object_id  #=> 1143388        同じIDになる


'apple'.object_id  #=> 70223819213380
'apple'.object_id  #=> 70223819213384
'apple'.object_id  #=> 70223819213377　　　　全部違うIDになる

#文字列は破壊的な変更が可能
string = 'apple'
string.upcase!
string #=> "APPLE"

#シンボルはイミュータブルなので、破壊的な変更は不可能
symbol = :apple
symbol.upcase! #=> NomethodError...
