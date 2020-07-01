describe "float_find_hypotenuse.rb" do
  it "should output '5.3''", points: 1 do
    float_find_hypotenuse_file = "float_find_hypotenuse.rb"
    file_contents = File.read(float_find_hypotenuse_file)
    File.foreach(float_find_hypotenuse_file).with_index do |line, line_num|
      if line.include?("p") || line.include?("puts")
        expect(line).to_not match(/5.3/),
          "Expected 'float_find_hypotenuse.rb' to NOT literally print '5.3', but did anyway."
      end
    end
    
    expect { require_relative '../../float_find_hypotenuse' }.to output("5.3\n").to_stdout
    
  end
end

describe "float_round.rb" do
  it "should output '3.333'", points: 1 do
    
    float_round_file = "float_round.rb"
    file_contents = File.read(float_round_file)
    File.foreach(float_round_file).with_index do |line, line_num|
      if line.include?("p") || line.include?("puts")
        expect(line).to_not match(/3.333/),
          "Expected 'float_round.rb' to NOT literally print '3.333', but did anyway."
      end
    end
    expect { require_relative '../../float_round' }.to output("3.333\n").to_stdout

  end
end
