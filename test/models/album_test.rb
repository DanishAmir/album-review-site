require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  
  setup do
    @user = users(:one)
  end
  
  test "not work" do
    
    album = Album.new
    
    album.save
    refute album.valid?
  end
  
  test "should work" do
    
    album = Album.new
    album.title = "To Pimp a Butterfly"
    album.year = 2015
    album.description = "Third studio album"
    album.artist = "Kendrick Lamar"
    album.user = @user
    
    album.save
    assert album.valid?
  end
  
  test "save without description" do
    album = Album.new
    album.title = "Recovery"
    album.year = 2017
    album.artist = "Eminem"
    album.user = @user
  
    album.save
    assert album.valid?
  end
  
  test "cannot leave these empty" do
    album = Album.new
    album.description = "amazing album"
    album.user = @user
  
    album.save
    refute album.valid?
  end
  
end
