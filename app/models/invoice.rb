class Invoice < ApplicationRecord
  belongs_to :user

  validates :debtor, presence: true
  validates :amount, presence: true

end
