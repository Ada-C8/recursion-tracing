def mystery1(n)
  puts n
  if n == 1
    return n
  else
    return n + mystery1(n-1)
  end
end

# What is mystery1(5)? => 15
# What is mystery1(10)? => 55
# What is mystery1(0)? => infinite loop, stack too deep.
# What is the time complexity of mystery1(n)? 0(n)
# What is the space complexity of mystery1(n)? 0(n)

def mystery2(n)
  if n < 10
    return n
  else
    return (n%10) + mystery2(n/10)
  end
end

# What is mystery2(123)? => 6
# What is mystery2(9005)? => 14
# What is mystery2(-123)? => -123
# What is the time complexity of mystery2(n)?
# What is the space complexity of mystery2(n)?
# Added Fun: How could we make mystery2(-123) work the way we might expect it to work instead of the way it does?


def mystery3(n)
  if n == 0
    return 100
  elsif n == -1
    return 200
  end
  if n%2 == 0
    return mystery3(n/2)
  else
    return mystery3(n-1)
  end
end

# What is mystery3(1)? => 100
# What is mystery3(13)? => 100
# What is mystery3(-6)? => 200
# What is the time complexity of mystery3(n)?
# What is the space complexity of mystery3(n)?




def mystery4(b,e)
  if e == 0
    return 1
  else
    return b * mystery4(b,e-1)
  end
end

# What is mystery4(10, 2)? => 100
# What is mystery4(4, 3)? => 64
# What is mystery4(5, 0)? => 1
# What is the time complexity of mystery4(b, e)? O(e), where e is the number of steps needed.
# What is the space complexity of mystery4(b, e)?
#O(e), where e is the number of stacks needed to compute.


def mystery5(s)
  if s.length == 0
    return ""
  else
    return "*" + mystery5(s[1..-1])
  end
end

# What is mystery5("hi")? => **
# What is mystery5("")? => ""
# What is mystery5("Hi, there!")? => **********
# What is the time complexity of mystery5(s)? O(n) where n is the length of s.
# What is the space complexity of mystery5(s)? O(n) where n is the length of s.
# Added Fun: How could we make only alphabetic characters to be changed to stars?




def mystery6(s)
  if s == nil || s.length == 0
    return ""
  else
    space = 0
    until space >= s.length || s[space] == " "
      space += 1
    end
    return mystery6(s[(space+1)..-1]) + " " + s[0...space]
  end
end

# What is mystery6("goodnight moon")? => " moon goodnight"
# What is mystery6("Ada Developers Academy")? => " Academy Developers Ada"
# What is mystery6("Hi, there!")? => " there! Hi,"
# What is the time complexity of mystery6(s)? O(n), where n is the length of the string.
# What is the space complexity of mystery6(s)? O(k), where K is the number of words in the string.
# Added Fun: How could we make the reversal happen by letter, instead of by word (i.e. Make it so that mystery6("goodnight moon") returned "noom thgindoog")?

def mystery7(word)
  if word.length < 2
    return true
  elsif word[0] != word[-1]
    return false
  else
    return mystery7(word[1..-2])
  end
end
#
# What is mystery7("cupcake")? => false
# What is mystery7("detected")? => false
# What is mystery7("eye")? => true
# What is the time complexity of mystery7(word)? O(n), where n is the length of the word.
# What is the space complexity of mystery7(word)? O(n), where n is the length of the word.
