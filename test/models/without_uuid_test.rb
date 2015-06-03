require 'test_helper'

class WithoutUuidTest < ActiveSupport::TestCase

  test 'does not update has_one record' do
    owner = Owner.create
    dog  = owner.create_dog

    dog_last_updated_at = dog.updated_at

    owner.update name: 'George'

    assert_equal dog.updated_at, dog_last_updated_at
  end

end
