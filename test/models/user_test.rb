require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "New user can be created" do
    user = User.new(username: "User", email: "user@user.com", password_digest: "password", profile_picture: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png")
    assert user.save
  end

  test "User cannot signup without username" do
    user = User.new(email: "user@user.com",password_digest: "password", profile_picture: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png")
    assert_not user.save, "username cannot be blank"
  end

  test "User cannot signup with invalid email" do
    user = User.new(username: "User", email: "user",password_digest: "password", profile_picture: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png")
    assert_not user.save, "email is invalid"
  end

end
