class Expense < ApplicationRecord
  belongs_to :user # User who submitted the expense
  has_one :reimbursement_request, dependent: :destroy # Each expense can have one reimbursement request

  # Expense categories could be stored as a string, or an enum for predefined categories
  enum :category, [:travel, :meals, :office_supplies]

end
