class Memory < ActiveRecord::Base
  validates_uniqueness_of :build, :scope => [:platform]
end
