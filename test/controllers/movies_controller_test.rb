require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:one)
  end

  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get new" do
    get new_movie_path
    assert_response :success
  end

  test "should create movie" do
    assert_difference('Movie.count') do
      post movies_url, params: { movie: { Comment: @movie.Comment, Date: @movie.Date, Evaluation: @movie.Evaluation, Theater: @movie.Theater, Title: @movie.Title } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "should show movie" do
    get movie_url(@movie)
    assert_response :success
  end

  test "should get edit" do
    get edit_movie_path(@movie)
    assert_response :success
  end

  test "should update movie" do
    patch movie_url(@movie), params: { movie: { Comment: @movie.Comment, Date: @movie.Date, Evaluation: @movie.Evaluation, Theater: @movie.Theater, Title: @movie.Title } }
    assert_redirected_to movie_url(@movie)
  end

  test "should destroy movie" do
    assert_difference('Movie.count', -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
  
  test "should not save movie without something" do
    movie = Movie.new
    assert_not movie.save
  end
  
end
