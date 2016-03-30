Given(/^the following movies exist:$/) do |movie_table|
  movie_table.hashes.each do |movie_args|
	Movie.create!(movie_args)
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  # express the regexp above with the code you wish you had
end

=begin

Given I have:
  | a | b |
  | c | d |
And a matching StepDefinition:

Given /I have:/ do |table|
  data = table.raw
end

This will store [['a', 'b'], ['c', 'd']] in the data variable

=end
