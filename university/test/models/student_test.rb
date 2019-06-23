require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "student vacio no graba" do
    student = Student.new()
    assert_not student.save
  end

  test "student sin nombre no graba" do
    student = Student.new({ :padron => "12345", :email => "alumno@mail.com" })
    assert_not student.save()
  end

  test "student sin padron no graba" do
    student = Student.new({ :name => "Alumno", :email => "alumno@mail.com" })
    assert_not student.save()
  end

  test "padron debe ser mas largo que 4 caracteres" do
    student = Student.new({ :name => "Alumno", :padron => "123", :email => "alumno@mail.com" })
    assert_not student.save()
    student = Student.new({ :name => "Alumno", :padron => "12345", :email => "alumno@mail.com" })
    assert student.save()
  end


  test "student sin mail valido no graba" do
    student = Student.new({ :name => "Alumno", :padron => "12345", :email => "mailfalso" })
    assert_not student.save()
  end

  test "student con todos los parametros graba" do
    student = Student.new({ :name => "Alumno", :padron => "12345", :email => "alumno@mail.com" })
    assert student.save()
  end

end