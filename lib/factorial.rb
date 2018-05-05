# Public: Factorial of a number
# 
# n - The Integer that will be factorialised
#
# Examples
#
#   factorial(5)
#   # => 120
#
# Returns the factorial of n
def factorial(n)
    begin 
        return 1 if n == 0
        return n * factiorial(n-1)
    rescue NoMethodError => e
        return "No strings please: #{e.message}"
    end
end