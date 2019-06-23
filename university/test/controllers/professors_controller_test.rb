require 'test_helper'

class ProfessorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professor = professors(:one)
    @professor.file_number = "12345"
  end

  test "should get index" do
    get professors_url
    assert_response :success
  end

  test "should get new" do
    get new_professor_url
    assert_response :success
  end

  test "should create professor" do
    assert_difference('Professor.count') do
      post professors_url, params: { professor: { file_number: @professor.file_number, name: @professor.name } }
    end

    assert_redirected_to professor_url(Professor.last)
  end

  test "should show professor" do
    get professor_url(@professor)
    assert_response :success
  end

  test "should get edit" do
    get edit_professor_url(@professor)
    assert_response :success
  end

  test "should update professor" do
    patch professor_url(@professor), params: { professor: { file_number: @professor.file_number, name: @professor.name } }
    assert_redirected_to professor_url(@professor)
  end

  test "should destroy professor" do
    assert_difference('Professor.count', -1) do
      delete professor_url(@professor)
    end

    assert_redirected_to professors_url
  end


end
