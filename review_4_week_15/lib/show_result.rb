def show_result(sum_string)
  raise ArgumentError.new("Input must be a string") if !sum_string.is_a? String

  if sum_string.include?("+")
    result = sum_string.split(" + ")
    .map(&:to_f)
    .reduce(:+)
    [sum_string, result]
  elsif sum_string.include?("/")
    result = sum_string.split(" / ")
    .map(&:to_f)
    .reduce(:/)
    [sum_string, result]
  elsif sum_string.include?("*")
    result = sum_string.split(" * ")
    .map(&:to_f)
    .reduce(:*)
    [sum_string, result]
  else
    result = sum_string.split(" - ")
    .map(&:to_f)
    .reduce(:-)
    [sum_string, result]
  end
end
