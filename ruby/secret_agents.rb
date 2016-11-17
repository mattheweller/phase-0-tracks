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