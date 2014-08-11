def kaprekar?(k)
  whole = k ** 2
  magnitude = 10 ** ( (Math.log10(whole).to_i/2) + 1)
  first, second = [whole/magnitude,whole%magnitude]
  p "#{whole} #{first} #{second}"
  true if first + second == k
end

kaprekar?(9)
kaprekar?(46)
kaprekar?(55)
kaprekar?(297)
kaprekar?(703)