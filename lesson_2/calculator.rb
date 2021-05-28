# ask the user for two numbers
# ask the user for an operation to perform
# perform operation on the two number
# output the result

Kernel.puts("Welcome to Calculator!")

Kernel.puts("What's the first number?")
num1 = Kernel.gets().chomp().to_i

Kernel.puts("What's the second number?")
num2 = Kernel.gets().chomp().to_i

Kernel.puts("What operation would you like to perform? 1) Add 2) Substract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == "1"
  result = num1 + num2
elsif operator == "2"
  result = num1 - num2
elsif operator == "3"
  result = num1 * num2
else
  result = num1.to_f / num2.to_f
end

Kernel.puts("The result is #{result}")