text = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056　兵庫県西脇市1234です。
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')