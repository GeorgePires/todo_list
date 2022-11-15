class Task < ApplicationRecord
  belongs_to :user
  validates :description, presence: true, allow_blank: false
  before_validation :resolved_default

  private
  
  def resolved_default
    self.resolved = false if self.resolved.nil?
  end
end
