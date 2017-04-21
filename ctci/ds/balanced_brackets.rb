#!/bin/ruby

def check(expression)
    stack = []

    expression.split("").each do |c|
        if $rhs.include? c
            popi = stack.pop

            if $pairs[popi] != c
                return false
            end
            next
            
        end
        stack << c
    end
    
    # if the stack is not empty, there's an incomplete pair
    return stack.length == 0                                 
       
end


$lhs = ['{', '[', '(']
$rhs = ['}', ']', ')']

$pairs = Hash['{' => '}', '[' => ']', '(' => ')']


t = gets.strip.to_i
for a0 in (0..t-1)
    expression = gets.strip
    
    # trivial case - if there's an odd number of chars, it has to be a negative
    if expression.length % 2 == 1 then puts 'NO'; next end
        
    # if there are no LHS or RHS chars, it has to be a negative
    if not $lhs.any? { |sym| expression.include?(sym)} then puts 'NO'; next end
    if not $rhs.any? { |sym| expression.include?(sym)} then puts 'NO'; next end
            
    
    if check(expression) then puts 'YES' else puts 'NO' end
  
end
