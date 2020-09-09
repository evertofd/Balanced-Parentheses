def balanced_parentheses(str)
    
    parenthesis = { '{' => '}', '[' => ']', '(' => ')' }
    arr = []
    
    str.each_char do |ch|
      if parenthesis.key?(ch)
        arr << ch
      elsif parenthesis.values.include?(ch)
        return false if parenthesis.key(ch) != arr.pop
      end
    end
    arr.empty?
end


ejemplo1 = '((())))' # => no tiene paréntesis balanceados
ejemplo2 = '[()({})]' #=> si tiene paréntesis balanceados
ejemplo3 = '[({})]' # =>si tiene paréntesis balanceados
ejemplo4 = '([)])' # =>no tiene paréntesis balanceados
ejemplo5 = '{[()]}' # => si tiene paréntesis balanceados
ejemplo6 = '{[(])}' #=> no tiene paréntesis balanceados

p balanced_parentheses(ejemplo1)
p balanced_parentheses(ejemplo2)
p balanced_parentheses(ejemplo3)
p balanced_parentheses(ejemplo4)
p balanced_parentheses(ejemplo5)
p balanced_parentheses(ejemplo6)