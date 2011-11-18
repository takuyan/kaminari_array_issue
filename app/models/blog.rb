class Blog < ActiveRecord::Base
  has_many :entries, :dependent => :nullify
end
