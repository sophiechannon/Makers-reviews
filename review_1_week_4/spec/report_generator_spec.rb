require 'report_generator'

RSpec.describe ReportGenerator do
  it "contructs and displays raw data" do
    report_1 = ReportGenerator.new("green, red, amber, amber, red")
    expect(report_1.report).to eq("green, red, amber, amber, red")
  end

  it "produce_report returns data in the correct format" do
    report_1 = ReportGenerator.new("green")
    expect(report_1.produce_report).to eq("Green: 1\nAmber: 0\nRed: 0")
  end

  it "produce_report returns data in the correct format" do
    report_1 = ReportGenerator.new("amber")
    expect(report_1.produce_report).to eq("Green: 0\nAmber: 1\nRed: 0")
  end

  it "produce_report returns data in the correct format" do
    report_1 = ReportGenerator.new("green, red, amber, amber, green")
    expect(report_1.produce_report).to eq("Green: 2\nAmber: 2\nRed: 1")
  end

  it "shows uncounted categories if the report contains invalid grades" do
    report_1 = ReportGenerator.new("green, red, amber, amber, green, yellow")
    expect(report_1.produce_report).to eq("Green: 2\nAmber: 2\nRed: 1\nUncounted: 1")
  end

  xit "raises and error if the raw data string is empty" do
    report_1 = ReportGenerator.new("")
    expect { report_1.produce_report }.to raise_error "Grade list cannot be empty"
  end

  xit "raises and error if the raw data is not a string" do
    report_1 = ReportGenerator.new("")
    expect { report_1.produce_report }.to raise_error "Grade list must be a string"
  end
end