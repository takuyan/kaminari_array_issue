class Entry < ActiveRecord::Base
  belongs_to :blog
  scope :launches, where(:launch => true)
  scope :newer, order("created_at desc")
end
