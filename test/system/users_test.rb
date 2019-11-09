require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit users_url
  #
  #   assert_selector "h1", text: "Users"
  # end
  test "users creates account" do
    visit '/'
    assert_selector "h1", text: "Home"
    fill_in :user_username, with: "User"
    fill_in :user_email, with: "user@user.com"
    fill_in :user_password, with: "password"
    fill_in :user_profile_picture, with: "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png"
    click_button 'commit'

  end
end
