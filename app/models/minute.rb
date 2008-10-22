class Minute < ActiveRecord::Base
  acts_as_taggable
  has_attached_file :minute, :styles => { :thumbnail => '200x200>' }
  validates_presence_of :minute, :contributor_email
end
