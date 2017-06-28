#write your code here
def echo string
  case string
  when "hello"
    "hello"
  when "bye"
    "bye"
  end
end

def shout string
  string.upcase
end

def repeat string, t = 2
  array=[]
  t.times do
    array.push(string)
  end
  array.join(' ')
end

def start_of_word string, position
  i = 0
  output = string[0..position-1]
end

def first_word string
  output = string.split(" ")
  output[0]
end

def titleize string
  output = string.split(" ")
  str=""
  output.each do |word|
    if word == "and" || word == "the" || word == "over"
      if output.length >= 2
        str+= " " + word.downcase
      else
        str = word.downcase
      end
    else
      if output.length >= 2
        str += " " + word.capitalize
      else
        str = word.capitalize
      end
    end
  end
  str = str.lstrip
  str[0]=str[0].capitalize
  str
end
