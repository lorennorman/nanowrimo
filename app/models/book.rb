class Book < ActiveRecord::Base
  ####################
  ### Associations ###
  ####################
  
  has_many :journals
  
  ############
  ### Slug ###
  ############
  
  def to_param
    "#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end
end
