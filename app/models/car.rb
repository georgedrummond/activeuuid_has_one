class Car < ActiveRecord::Base
  include ActiveUUID::UUID
  belongs_to :user
end
