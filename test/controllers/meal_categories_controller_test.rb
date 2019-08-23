require 'test_helper'

class MealCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get meal_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get meal_categories_create_url
    assert_response :success
  end

end
