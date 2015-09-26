# Write a function that combines two lists by alternatingly taking elements. 
class CodeChallenges

  def alternate_elements
    alpha = ["a", "b", "c"]
    num = [1,2,3,4]
    combo =[]

    max_count = [alpha.count, num.count].max

    index = 0
    while index < max_count
      combo << alpha[index]
      combo << num[index]
      index += 1
    end
    combo
  end


# Write a function that computes the list of the first 100 Fibonacci numbers. 

  def fibonacci
    fib = [0, 1]
    num = 100

    while fib.count < num
      fib << fib[-1] + fib[-2]
    end
    fib
    p "Total in sequence: #{fib.count}."
  end

# Write three functions that compute the sum of the numbers in a given list using a for-loop, a while-loop, and recursion.
  def sum_for_loop
    num = (1..10).to_a
    sum = 0

    for i in num
      sum += i 
    end
    sum
  end

  def sum_for_while_loop
    num = (1..10).to_a
    index = 0
    sum = 0

    while index < num.count
      sum += num[index]
      index += 1
    end
    sum
  end

  def sum_recursion(num)
    #set a flag/break point to stop adding numbers when you reach the last num in the array
    if num == 0 
      0
    else
      num + sum_recursion(num - 1)
    end
  end

# Write a function that given a list of non negative integers, 
# arranges them such that they form the largest possible number. 
# For example, given [50, 2, 1, 9], the largest formed number is 95021.
  def largest_number(numbers)
    numbers.permutation.to_a.map { |set| set.join.to_i }.max
  end
end


code_challenges = CodeChallenges.new
numbers = [420, 42, 423]
p code_challenges.largest_number(numbers)