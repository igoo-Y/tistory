class Enum < ApplicationRecord
  enum status: [:coffee, :tea, :juice, :icecream]
end
