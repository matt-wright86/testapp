require "test_helper"

class CanAccessHomeTest < Capybara::Rails::TestCase
  test "sanity" do

    visit root_path
    click_link "New Post"
    fill_in 'title', with: "this is a tester test"
    fill_in 'body', with: "this is the body of the tester test"
    click_button "Create Post"
    assert_content "this is a tester test"

  end
end
