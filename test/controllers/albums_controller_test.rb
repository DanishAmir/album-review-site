require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  setup do
    @album = albums(:one)
    @review = reviews(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:albums)
  end
  
  
  test "should show album" do
    get :show, @album
    assert_response :success
  end


  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create album" do
    assert_difference('Album.count') do
      post :create, album: { artist: @album.artist, description: @album.description, title: @album.title, year: @album.year}
    end
    assert_redirected_to album_path(assigns(:album))
  end


  test "should update album" do
      patch :update, id: @album, album: { artist: @album.artist, description: @album.description, title: @album.title, year: @album.year }
      assert_redirected_to edit_album_path(assigns(:album))
  end

  test "should destroy album" do
    assert_difference('Album.count', -1) do
      delete :destroy, id: @album
    end
    assert_redirected_to albums_path
  end
  
end
