#!/bin/ruby

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

# make hashset out of magazine
magazineHash = Hash.new(0)
magazine.each { |w| magazineHash[w] += 1 }

ransom.each { |w| if magazineHash[w] -= 1}

magazineHash.each do |k, v|
    if v < 0
        puts 'No'
        exit
    end
end

puts 'Yes'



