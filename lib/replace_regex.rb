class String
  REGEX_EXPR = /[aeiou]/.freeze
  def replacestr
    gsub(REGEX_EXPR, '*')
  end
end
if ARGV.length.zero?
  puts 'Please provide an input'
else puts ARGV[0].replacestr
end