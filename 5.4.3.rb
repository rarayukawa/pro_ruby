def buy_burger(menu, drink: true, potato: true)
  #ハンバーガー購入
  if drink
    #ドリンクを購入
  end
  if potato
    #ポテトを購入
  end
end

buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink: true, potato: false)

#drinkはデフォルトのtrueを使うので指定しない
buy_burger('fish', potato: false)

#deirnkもpotatoもデフォルトの値trueを使うので指定しない
buy_burger('cheese')

#デフォルト値なしのキーワード引数を使ってメゾットを定義する
def buy_burger(menu, drink:, potato:)
  #省略
end
#キーワード引数を指定すれば、デフォルト値ありの場合と同じように使える
buy_burger('cheese', drink: true, potato: true)

#キーワード引数を省略するとエラーになる
buy_burger('fish', potato: false) #=>AgumentError.....

#キーワード引数と一致する八種であれば、　メゾットの引数として渡すことができる
params = { drink: true, potato: false }
buy_burger('fish', params)