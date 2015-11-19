class Beacon < ActiveRecord::Base
  validates :major, :minor, :name, presence: true
  validates_inclusion_of :major, :minor, :in => 1..65535
end
