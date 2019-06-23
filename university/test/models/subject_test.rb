require 'test_helper'

class SubjectTest < ActiveSupport::TestCase

  test "subject sin parametros no graba" do
    subject = Subject.new()
    assert_not subject.save
  end

  test "subject sin nombre no graba" do
    profesor = Professor.new()
    subject = Subject.new({ :code => "12345", :professor => profesor })
    assert_not subject.save()
  end

  test "subject sin codigo no graba" do
    profesor = Professor.new()
    subject = Subject.new({ :name => "TDL", :professor => profesor })
    assert_not subject.save()
  end

  test "subject sin profesor no graba" do
    subject = Subject.new({ :name => "TDL", :code => "12345" })
    assert_not subject.save()
  end

  test "subject con todos los parametros graba" do
    profesor = Professor.new()
    subject = Subject.new({ :name => "TDL", :code => "12345", :professor => profesor })
    assert subject.save()
  end

end