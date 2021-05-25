#このコードは
['ruby', 'java', 'perl'].map { |s| s.upcase } #=>["RUBY", "JAVA", "PERL"]
#こう書き換えられる
['ruby', 'java', 'perl'].map(&:upcase) #=>["RUBY", "JAVA", "PERL"]

#このコードは
[1, 2, 3, 4, 5, 6].select { |n| n.odd? } #=> [1, 3, 5]
#こう書き換えられる
[1, 2, 3, 4, 5, 6].select(&:odd?) #=> [1, 3, 5]
