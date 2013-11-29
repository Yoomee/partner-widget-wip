FactoryGirl.define do
  
  factory :poll, class: PartnerWidget::Poll do
    name "A poll"
    sequence :question do |n|
      "Is #{n} your favourite number?"
    end
    answer_1 "Yes"
    message_1 "You said yes"
    answer_2 "No"
    message_2 "You said no"
  end
  
end