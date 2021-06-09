#ここはトップレベル
p self    #=>main
p self.class  #=>Object

class User
  #ここはクラスの内部
  p self   #=>USer
  p self.class  #=>Class
end

#これらから、トップレベルでもpメソッドやputsメソッドが問題なく呼び出せるのは、selfがObjectクラスのインスタンスであり、ObjectクラスがKernelモジュールをincludeしているから、ということがわかる
