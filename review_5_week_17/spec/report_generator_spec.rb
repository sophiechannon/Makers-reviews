require 'report_generator'

describe ReportGenerator do 
  describe "generate_report" do 
    it "returns the report for one test with just one green score" do
      report_generator = ReportGenerator.new
      report_generator.add("Green")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 1\nAmber: 0\nRed: 0"
    end
    it "returns the report for one test with just two green scores" do
      report_generator = ReportGenerator.new
      report_generator.add("Green, Green")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 2\nAmber: 0\nRed: 0"
    end
    it "returns the report for one test with just 1 green 1 amber" do
      report_generator = ReportGenerator.new
      report_generator.add("Green, Amber")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 1\nAmber: 1\nRed: 0"
    end
    it "returns the report for one test with 1 of each valid score tyoe" do
      report_generator = ReportGenerator.new
      report_generator.add("Green, Amber, Red")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 1\nAmber: 1\nRed: 1"
    end
    it "returns the report for one test with a mixture of valid score types" do
      report_generator = ReportGenerator.new
      report_generator.add("Green, Green, Amber, Red, Red")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 2\nAmber: 1\nRed: 2"
    end
    it "returns multiple test scores in correct format" do
      report_generator = ReportGenerator.new
      report_generator.add("Green")
      report_generator.add("Amber")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 1\nAmber: 0\nRed: 0\n---\nTest 2:\nGreen: 0\nAmber: 1\nRed: 0"
    end
    it "returns multiple test scores in correct format" do
      report_generator = ReportGenerator.new
      report_generator.add("Green, Amber, Red")
      report_generator.add("Amber, Amber, Green")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 1\nAmber: 1\nRed: 1\n---\nTest 2:\nGreen: 1\nAmber: 2\nRed: 0"
    end
    it "returns uncounted for invalid scores" do
      report_generator = ReportGenerator.new
      report_generator.add("Green,Dave,Whimsy,Red")
      expect(report_generator.generate_report).to eq "Test 1:\nGreen: 1\nAmber: 0\nRed: 1\nUncounted: 2"
    end
    it "raises error for invalid input" do
      report_generator = ReportGenerator.new
      expect {report_generator.add(1234) }.to raise_error "Input must be a comma separated string"
    end
  end
end