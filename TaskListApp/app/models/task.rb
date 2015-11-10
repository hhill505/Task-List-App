class Task < ActiveRecord::Base
  belongs_to :tasklist
  validates :title, :priorit, :duedate, :tasklist, presence: true
  validates :priorit, numericality: {greater_than_or_equal_to: 1}
  validates :priorit, numericality: {less_than_or_equal_to: 10}
end
