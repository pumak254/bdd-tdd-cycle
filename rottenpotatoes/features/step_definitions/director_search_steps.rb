Given(/^the following movies exist:$/) do |movie_table|
  movie_table.hashes.each do |movie_args|
	Movie.create!(movie_args)
  end
end

Then(/^the director of "(.*?)" should be "(.*?)"$/) do |arg1, arg2|
  # express the regexp above with the code you wish you had
end

