class Answer < ApplicationRecord
  belongs_to :question

  enum personality: { introvert: 0, extrovert: 1 }
end
