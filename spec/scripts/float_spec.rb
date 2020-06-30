describe "find_hypotenuse.rb" do
  it "should output hypotenuse", points: 1 do
    expect { require_relative '../../APP/find_hypotenuse' }.to output("5.3\n").to_stdout

  end
end

describe "round.rb" do
  it "should output hypotenuse", points: 1 do
    expect { require_relative '../../APP/round' }.to output("3.333\n").to_stdout

  end
end
