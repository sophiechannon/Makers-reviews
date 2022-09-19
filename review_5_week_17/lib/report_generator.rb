class ReportGenerator
  def initialize
    @reports = []
  end

  def add(report_string)
    if report_
    @reports << report_string
  end

  def generate_report
    greens = 0
    ambers = 0
    reds = 0
    uncounted = 0
    @reports.map.with_index do |report, index| 
      report_array = report.gsub(" ", "").split(",")
      greens = report_array.count("Green")
      ambers = report_array.count("Amber")
      reds = report_array.count("Red")
      total_valid_scores = greens + ambers + reds
      uncounted = report_array.length - total_valid_scores
      if uncounted == 0
        "Test #{index+1}:\nGreen: #{greens}\nAmber: #{ambers}\nRed: #{reds}"    
     else
        "Test #{index+1}:\nGreen: #{greens}\nAmber: #{ambers}\nRed: #{reds}\nUncounted: #{uncounted}"
     end
    end
    .join("\n---\n")
  end
end