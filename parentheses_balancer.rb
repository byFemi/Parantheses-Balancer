def containerType(brack)
  if brack == '(' or brack == ')'
    return 1
  elsif brack == '{' or brack == "}"
    return 2
  elsif brack == "[" or brack == "]"
    return 3
  end
end

def isBalanced(string)
  balance = []
  string.each_char do |i|
    if i == '(' or i == '[' or i == '{'
      balance.push(i)
      puts "balance stack now: #{balance}"
    elsif i == ')' or i == ']' or i == '}'
      #puts "comparing #{i} and #{balance.last}"
      if containerType(i) != containerType(balance.last) or balance.empty?
        return false
      else 
        balance.pop
        puts "balance stack now: #{balance}"
      end
    end
  end
  if balance.empty?
    return true
  else
    return false
  end
end

input = ""
puts "Please enter string to check if balanced"
input = gets.chomp
puts isBalanced(input)