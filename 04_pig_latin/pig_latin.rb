def translate string
  strArray = string.split(" ")
  output = ""

  strArray.length.times do |i|
    if i <= 0
      output += typeString(strArray[i])
    else
      output += " " + typeString(strArray[i])
    end
  end

  output

end

def typeString string
  isVowelWord = helper(string, 0) #first char
  isConsoWord = false
  isTwoConsoWord = false
  output = ""

  if isVowelWord
    output = string + "ay"
  else # first char consonant
    isConsoWord = helper(string, 1) # test second char
    isTwoConsoWord = helper(string,2) # test third char
    if isConsoWord # second char is vowels
      output = string.reverse + "ay"
      if isTwoConsoWord || string[2] == 'x'
        output = string[1..string.length] + string[0] + "ay"
      end
    else
      output = string[2..string.length] + string[0..1] + "ay"
      if !isTwoConsoWord
        output = string[3..string.length] + string[0..2] + "ay"
      end
    end
  end
  if string[0] == 'q' && string[1] == 'u'
    output = string[2..string.length] + string[0..1] + "ay"
  end
  if string[0] == 's' && string[1] =='q' && string[2]=='u'
    output = string[3..string.length] + string[0..2] + "ay"
  end
  output
end

def helper string, ch
  vowels = ['a','e','i','o','u']
  output = false

  vowels.length.times do |i|
    if string[ch] == vowels[i]
      output = true
    end
  end
  output
end
