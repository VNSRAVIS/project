class Srtpconf < ActiveRecord::Base
  validates_uniqueness_of :build, :scope => [:platform]
end
