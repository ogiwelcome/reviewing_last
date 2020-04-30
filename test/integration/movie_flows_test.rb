require 'test_helper'

class MovieFlowsTest < ActionDispatch::IntegrationTest
  
  test "can see the index page" do
    get "/"
    assert_select "h1", "Movies App"
  end
  test "can create an movie" do
    get "/movies/new"
    assert_response :success
    post "/movies", params: { movie: { Title: "hoge", Date: "2020-02-22", Theater: "here", Evaluation: 3, Comment: "nothing"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
