class Medium < ActiveRecord::Base
  has_many :stories, :dependent => :nullify
end
