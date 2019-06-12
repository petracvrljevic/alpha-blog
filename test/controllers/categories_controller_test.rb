require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    def setup 
        @category = Category.create(name: "sports")
        @user = User.create(username: "petra", email: "petra@xample.com", password: "12345", admin: true)
    end
   
    test "should get categories index" do 
        get categories_path
        assert_response :success
    end
    
    test "should get new" do 
        sign_in_as(@user, "12345")
        get new_category_path
        assert_response :success
    end 

    test "should get show" do 
        get category_path(@category)
        assert_response :success
    end

end