require 'test_helper'

class PhilosophyFileTest < ActiveSupport::TestCase
  def test_should_be_invalid
    assert !PhilosophyFile.new.valid?
  end

  def test_should_be_valid
    a = PhilosophyFile.new
    a.name = "test"
    assert a.valid?
  end
end
