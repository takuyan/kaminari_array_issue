class Story < ActiveRecord::Base
  belongs_to :medium
  scope :entries, where(:launch => true)
  scope :unlaunches, where(:launch => false)
  scope :newer, order("created_at desc")
end
