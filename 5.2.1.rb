#ハッシュ[キー] = 値
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
#イタリアの通貨を追加する
currencies['italy'] = 'euro'

currencies #=> {'japan'=>'yen', 'us'=>'dollar', 'india'=>'rupee', 'italy'=>'euro'}

#すでにキーが存在していた場合は値が上書きされる
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
#既存の値を上書きする
currencies['japan'] = '円'

currencies #=> {"japan"=>"円", "us"=>"doller", "india"=>"rupee"}

