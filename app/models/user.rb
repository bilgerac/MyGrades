class User < ActiveRecord::Base
  attr_accessible :section, :team_id, :user_id, :user_name, :user_type
end
