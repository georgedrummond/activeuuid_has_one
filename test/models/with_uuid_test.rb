require 'test_helper'

class WithUuidTest < ActiveSupport::TestCase

  test 'does not update has_one record' do
    user = User.create
    car  = user.create_car

    car_last_updated_at = car.updated_at

    user.update name: 'George'

    assert_equal car.updated_at, car_last_updated_at
  end

end
