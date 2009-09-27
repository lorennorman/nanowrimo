class Journal < ActiveRecord::Base
  ####################
  ### Associations ###
  ####################
  
  belongs_to :book
end
