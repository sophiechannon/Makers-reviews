require "show_result"

describe "show_result" do
  it "returns the extracted sum and result as a float for 1+1" do
    expect(show_result("1 + 1")).to eq ["1 + 1", 2.0]
  end
  it "returns the extracted sum and result as a float for 2+1" do
    expect(show_result("2 + 1")).to eq ["2 + 1", 3.0]
  end
  it "returns the extracted sum and result as a float for 2+2" do
    expect(show_result("2 + 2")).to eq ["2 + 2", 4.0]
  end
  it "returns the extracted sum and result as a float for 1 + 1 + 1" do
    expect(show_result("1 + 1 + 1")).to eq ["1 + 1 + 1", 3.0]
  end
  it "returns the extracted sum and result as a float for 2 - 1" do
    expect(show_result("2 - 1")).to eq ["2 - 1", 1.0]
  end
  it "returns the extracted sum and result as a float for 2 * 1" do
    expect(show_result("2 * 1")).to eq ["2 * 1", 2.0]
  end
  it "returns the extracted sum and result as a float for 4 / 2" do
    expect(show_result("4 / 2")).to eq ["4 / 2", 2.0]
  end
  it "returns the extracted sum and result if input contains floating points" do
    expect(show_result("1.5 + 1.75")).to eq ["1.5 + 1.75", 3.25]
  end
  it "raises an error if input is not a string" do
    expect { show_result(1 + 1) }.to raise_error(ArgumentError, "Input must be a string")
  end
  it "raises an error if input is not a string" do
    expect { show_result(["1 + 1"]) }.to raise_error(ArgumentError, "Input must be a string")
  end
end