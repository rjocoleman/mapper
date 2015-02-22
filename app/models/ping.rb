class Ping < ActiveRecord::Base
  validates_presence_of :token
end
