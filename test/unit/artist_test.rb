require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "Philip Jeck release count" do
    philip_jeck = artists(:philip_jeck)
    assert_equal 2, philip_jeck.releases.count
  end
end
