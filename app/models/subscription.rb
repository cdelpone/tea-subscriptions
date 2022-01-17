class Subscription < ApplicationRecord
  belongs_to :customer

  enum status: %w[active cancelled]
  enum frequency: %w[weekly monthly annually]
end
