require('rspec')
require('ruby_logic')

describe('#win?')do
it("returns true if rock is the object and scissors is the argument") do
  game = RPS.new("rock", "scissors")
  expect(game.win?()).to(eq(true))
end
it("returns true if scissors is the object and paper is the argument") do
  game = RPS.new("scissors", "paper")
  expect(game.win?()).to(eq(true))
end
it("returns true if paper is the object and rock is the argument") do
  game = RPS.new("paper", "rock")
  expect(game.win?()).to(eq(true))
end
end

describe('#lose?') do
  it("returns true if scissors is the object and rock is the argument") do
    game = RPS.new("scissors", "rock")
    expect(game.lose?()).to(eq(true))
  end
  it("returns true if paper is the object and scissors is the argument") do
    game = RPS.new("paper", "scissors")
    expect(game.lose?()).to(eq(true))
  end
  it("returns true if rock is the object and paper is the argument") do
    game = RPS.new("rock", "paper")
    expect(game.lose?()).to(eq(true))
  end
end

describe('#tie?') do
  it("returns 'Tie!' if the object and argument are the same") do
    game = RPS.new("rock", "rock")
    expect(game.tie?()).to(eq("Tie!"))
  end
end
