# frozen_string_literal: true

# class String for replace vowels method
class String
  REGEX_EXPR = /[aeiou]/.freeze
  # method to replace vowels with *
  def replace_vowels
    gsub(REGEX_EXPR, '*')
  end
end
if ARGV.length.zero?
  puts 'Please provide an input'
else
  puts ARGV[0].replace_vowels
end
