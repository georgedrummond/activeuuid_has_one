class User < ActiveRecord::Base
  include ActiveUUID::UUID
  has_one :car
end
