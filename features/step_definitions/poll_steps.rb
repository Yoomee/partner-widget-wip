Given(/^there (is|are) (\d+) polls?$/) do |is_are, polls_count|
  @polls = [].tap do |arr|
    polls_count.to_i.times do
      arr << FactoryGirl.create(:poll)
    end
  end
  @poll = @polls.first
end

When(/^I go to the poll$/) do
  visit path_to(@poll)
end

Then(/^I see the question$/) do
  expect(page).to have_content @poll.question
end

Then(/^I see the answer options$/) do
  @poll.answers.each do |answer|
    expect(page).to have_content answer
  end
end