#!/bin/ruby

a = gets.strip
b = gets.strip

aHash = Hash.new
bHash = Hash.new

(a+b).split("").each do |c|
    aHash[c] = 0
    bHash[c] = 0
end

a.split("").each do |c|
    aHash[c] = aHash[c] + 1
end

b.split("").each do |c|
    bHash[c] = bHash[c] + 1
end

counter = 0
aHash.each do |k, v|
    if aHash[k] != bHash[k]
        counter += (aHash[k] - bHash[k]).abs
    end
end

puts counter

