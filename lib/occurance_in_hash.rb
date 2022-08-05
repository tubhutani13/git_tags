# frozen_string_literal: true

# String class
class String
  # regular expression for words only
  REGEX_EXPR = /[a-zA-Z]/.freeze # /w - (0-9)
  # method of finding occurance
  def occurance_str
    ans = Hash.new(0)
    each_char do |char|
      ans[char] += 1 if char =~ REGEX_EXPR
    end
    ans
  end
end
# main program
input = ARGV
if input.length.zero?
  puts 'Please provide an input'
else
  puts input[0].occurance_str
end
