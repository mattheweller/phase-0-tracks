def encrypt(string)
  result = ""
  i = 0
  while i < string.length
    if string[i] == " "
      next
    else
      result += string[i].next
    end
  i += 1
  end
  result
end

def decrypt(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  result = ""
  i = 0
  while i < string.length
    result += alphabet[(alphabet.index(string[i])) - 1]
  i += 1
  end
  result
end