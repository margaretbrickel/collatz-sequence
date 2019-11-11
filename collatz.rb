def build_collatz_chain(n)
  val = [n]
  return val if n == 1

  if n.even?
    val + build_collatz_chain(n / 2)
  else
    val + build_collatz_chain(3 * n + 1)
  end
end

chain_count, num = 0, 0
(1..1000000).each do |x|
  chain = build_collatz_chain(x)
  chain_length = chain.length
  chain_count, num = chain_length, x if chain_length >= chain_count    
end

puts "num: #{num}, chain count: #{chain_count}"