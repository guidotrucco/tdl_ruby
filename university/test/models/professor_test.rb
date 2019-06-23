require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase

  test "professor vacio no graba" do
    professor = Professor.new()
    assert_not professor.save
  end

  test "professor sin nombre no graba" do
    professor = Professor.new({ :file_number => "12345"})
    assert_not professor.save()
  end

  test "professor sin numero no graba" do
    professor = Professor.new({ :name => "Profesor" })
    assert_not professor.save()
  end

  test "professor con todos los parametros graba" do
    professor = Professor.new({ :name => "Alumno", :file_number => "12345" })
    assert professor.save()
  end

end
