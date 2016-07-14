#Encrypt Method
def encrypt(string)
  result = ""
  i = 0
  while i < string.length
  	if string[i].next == "aa"
  		result += string[i].next[1]
  	else
    	result += string[i].next
  	end
    i += 1
  end
  return result
end

puts encrypt("abc")
puts encrypt("zed")

#Decrypt Method
def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = ""
  i = 0
  while i < string.length
    result += alphabet[alphabet.index(string[i]) - 1]
    i += 1
  end
  return result
end

puts decrypt("bcd")
puts decrypt("afe")

puts decrypt(encrypt("swordfish"))

#Asks for encrypted or decrypted password
puts "Did you want to decrypt or encrypt your password?"
reply = gets.chomp

puts "Enter your password"
password = gets.chomp

if reply == "encrypt"
	puts encrypt(password)
else
	puts decrypt(password)
end

#this decrypts johnny
puts decrypt("johnny")

#this encrypts anthony
puts encrypt("anthony")