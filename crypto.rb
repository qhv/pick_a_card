require 'digest'

puts "Введите фразу для шифрования:"

input = STDIN.gets.chomp

puts "Каким способом зашифровать?"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"

hash_func = -1
hash_func = STDIN.gets.to_i until hash_func.between?(1, 3)

puts "Вот что получилось:"

hash_value =
  case hash_func
  when 1 then Digest::MD5.hexdigest(input)
  when 2 then Digest::SHA1.hexdigest(input)
  when 3 then Digest::SHA2.hexdigest(input)
  else
    "Неизвестный способ шифрования."
  end

puts hash_value
