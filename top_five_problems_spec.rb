require_relative 'top_five_problems'

RSpec.describe CodeChallenges do 

  it "creates largest number" do 
    code_challenges = CodeChallenges.new
    numbers = [50, 2, 1, 9]
    expect(code_challenges.largest_number(numbers)).to eq(95021)
  end

  it "creates largest number edge case" do 
    code_challenges = CodeChallenges.new
    numbers = [42, 423, 420]
    expect(code_challenges.largest_number(numbers)).to eq(42423420)
  end
end