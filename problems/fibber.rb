class Fibber
  def self.generate(target)
    fibs = []
    fib = 1
    next_fib = 1

    while next_fib <= target
      fibs << next_fib
      next_fib = fib + next_fib
      fib = fibs.last
    end

    fibs
  end

  def self.sum_evens(target)
    targets = generate(target)
    targets.inject(0) do |sum, x|
      if x.even?
        sum + x
      else
        sum
      end
    end
  end
end
