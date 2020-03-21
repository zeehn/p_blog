require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    def setup
        @category = Category.new(name: "Sports")
    end

    test "should get categories index" do
        get categories_url
        assert_response :success
    end

    test "should get new" do
        get '/categories/new'
        assert_response :success
    end

    test "should get show" do
        get category_url(:@category)
        assert_response :success
    end
end