require 'test_helper'

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get article_title_url
    assert_response :success
  end

  test "should get body:text" do
    get article_body:text_url
    assert_response :success
  end

end
