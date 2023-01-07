class CodeBreaker
  def initialize(result)
    @result = result.chars
  end
  def try(guess)
    digits = @result.intersection(guess.chars)
    digits.collect {|n| @result.index(n) == guess.chars.index(n) ? "_" : "X"}.sort.join
  end
end