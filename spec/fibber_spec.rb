require 'spec_helper'

describe Fibber do
  it "generates fib numbers up to the provided number" do
    fibs_up_to_10 = [1, 2, 3, 5, 8]
    expect(Fibber.generate(10)).to eq(fibs_up_to_10)

    fibs_up_to_100 = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
    expect(Fibber.generate(100)).to eq(fibs_up_to_100)
  end

  it "knows the sum of even numbers less than 100" do
    expect(Fibber.sum_evens(100)).to eq(44)
    expect(Fibber.sum_evens(10)).to eq(10)
  end

  it "knows how to produce the sum of even fibs up to 4 million" do
    expect(Fibber.sum_evens(4_000_000)).to eq(4613732)
  end
end
