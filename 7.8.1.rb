#クラスを凍結する
Product.freeze

#feezeすると変更できなくなる
Product::DEFAULT_PRICE = 5000 #=> RuntimeError.....


class Product
  DEFAULT_PRICE = 0
  #freezeすれば際代入を防止できるが、デメリットの方が大きいので普通しない
  Freeze
  DEFAULT_PRICE = 1000 #=> RuntimeError.....
end
