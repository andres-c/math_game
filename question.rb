def question_generate
  math_symbol = ['+', '-', '*']
  q = math_symbol.sample
  num1 = rand(10)
  num2 = rand(10)
  "#{num1} #{q} #{num2}"
end