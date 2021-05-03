class Dessert < ApplicationRecord
  enum status: [:coffee, :tea, :juice, :icecream]
end
