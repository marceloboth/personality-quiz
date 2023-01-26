# frozen_string_literal: true

module Quiz
  class CallToActionComponent < ViewComponent::Base
    renders_one :title
    renders_one :description
    renders_one :link_to_new_quiz
  end
end
