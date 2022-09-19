class ReportGenerator
  VALID_GRADES = ["green", "amber", "red"]

  attr_reader :report

  def initialize(report)
    @report = report.downcase
  end

  def produce_report
    array = report.split(", ")
    green_count = array.count("green")
    amber_count = array.count("amber")
    red_count = array.count("red")
    "Green: #{green_count}\nAmber: #{amber_count}\nRed: #{red_count}"
  end
end