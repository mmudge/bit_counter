def count_bits(file)
  zero_bits = 0
  one_bits = 0

  File.foreach(file) do |f|
    zero_bits += f.unpack('b*').first.count("0")
    one_bits += f.unpack('b*').first.count("1")
  end

  puts "Found #{one_bits} bits set to 1"
  puts "Found #{zero_bits} bits set to 0"
end

count_bits('test.jpg')
