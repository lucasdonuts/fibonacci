def fibs(num)
  result = [0, 1]
  return result.first(num) if num < 2
  i = 2
  while i < num
    result[i] = result[i - 1] + result[i - 2]
    i += 1
  end
  result
end

def fibs_rec(num, result = [0, 1])
  return result.first(num) if num <= 2
  result << (result[-1] + result[-2])
  fibs_rec(num -1, result)
end

num = gets.chomp.to_i
p fibs(num)
p fibs_rec(num)