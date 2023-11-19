def caesar_cipher(normal, n)
  (0..(normal.length - 1)).each do |i|
    if ('a'..'z').include?(normal[i])
      normal[i] = ((normal[i].ord - 'a'.ord + n) % 26 + 'a'.ord).chr
    elsif ('A'..'Z').include?(normal[i])
      normal[i] = ((normal[i].ord - 'A'.ord + n) % 26 + 'A'.ord).chr
    end
  end
  normal
end

puts caesar_cipher('What a string!', 5)