class Minute < ActiveRecord::Base
  acts_as_taggable
  has_attached_file :minute, :styles => { :thumbnail => '200x200>' }
  validates_presence_of :minute_file_name, :contributor_email
  
  def validate
    acceptable_filetypes = %w(.doc .txt .jpg .gif .mp3 .mp4)
    unless minute_file_name.nil?
      unless acceptable_filetypes.include? minute_file_name.match(/\.[\w]+$/)[0]
        errors.add('minute', 'is not an acceptable filetype')
      end
    end
  end
  
end
