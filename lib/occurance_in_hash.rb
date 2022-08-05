class String
  REGEX_EXPR = /[a-zA-Z]/.freeze # /w - (0-9)
  def occr_str
    ans = Hash.new(0)
    each_char do |char|
      ans[char] += 1 if char =~ REGEX_EXPR
    end
    ans
  end
end
input = ARGV
if input.length.zero?
  puts 'Please provide an input'
else
  puts input[0].occr_str
end