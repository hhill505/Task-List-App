class Task < ActiveRecord::Base
  belongs_to :tasklist
  validates :title, :priorit, :duedate, :tasklist, presence: true
  validates :priorit, numericality: {greater_than_or_equal_to: 1}
  validates :priorit, numericality: {less_than_or_equal_to: 10}

  # jarp: fixing 'priorit' now will be less of a headache than fixing it later or trying to deal with the typo
  # jarp: using inclusion: 1..10 can apply the validation in one statement
end
