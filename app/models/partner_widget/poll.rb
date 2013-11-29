module PartnerWidget
  class Poll < ActiveRecord::Base
    
    def answers
      [answer_1, answer_2, answer_3, answer_4].select(&:present?)
    end
    
  end
end
