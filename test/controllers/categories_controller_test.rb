require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
    def setup
        @category = Category.create(name: "sports")
        @user = User.create(username: 'John', email: 'john@example.com', password: '123456', admin: true)
    end

    test "should get categories index" do
        get categories_path
        assert_response :success
    end

    test "should get categories new" do
        sign_in_as(@user, "123456")
        get new_category_path
        assert_response :success
    end

    test "should get categories show" do
        get category_path(@category)
        assert_response :success
    end

    test "should redirect create when not an admin" do
        assert_no_difference 'Category.count' do
            post categories_path, params: { category: { name: "sports" } }
        end
        assert_redirected_to categories_path
    end
end