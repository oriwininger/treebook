class Status < ActiveRecord::Base
  attr_accessible :context, :user_id
  #has_one :user
  # attr_accessor :user_id
  # attr_accessor :context

  belongs_to :user
end
