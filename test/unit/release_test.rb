require 'test_helper'

class ReleaseTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "get artist name" do
    release = releases(:an_ark_for_the_listener)
    assert_equal release.artist.name, release.artist_name
  end
end
