class Todo < ApplicationRecord
  def self.completed
    where.not(completed_at: nil)
  end

  def self.incomplete
    where(completed_at: nil)
  end
end
