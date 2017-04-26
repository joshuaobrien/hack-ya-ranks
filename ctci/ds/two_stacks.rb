# Enter your code here. Read input from STDIN. Print output to STDOUT
left = []
right = []
    
t = gets.strip.to_i
for a0 in (0..t-1)
    op = gets.strip

    case op.split(' ')[0].to_i
    when 1 #enq
        left << op.split(' ')[1]
    when 2 #deq
        if right.size == 0
            (0..left.length - 2).each{ |i| right << left.pop} # shift everything but the bottom
            left.pop # pop the bottom
        else
            right.pop
        end
    when 3 #print
        if right.size != 0
            top = right.pop
            puts top
            right << top
        else
            (0..left.length - 2).each{ |i| right << left.pop}
            top = left.pop
            puts top
            right << top
        end
    end
end
