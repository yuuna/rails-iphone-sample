class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :following, :class_name => "User"
  # attr_accessible :title, :body
  
end
