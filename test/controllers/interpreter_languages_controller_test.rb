require 'test_helper'

class InterpreterLanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get interpreter_languages_index_url
    assert_response :success
  end

  test "should get show" do
    get interpreter_languages_show_url
    assert_response :success
  end

  test "should get new" do
    get interpreter_languages_new_url
    assert_response :success
  end

  test "should get edit" do
    get interpreter_languages_edit_url
    assert_response :success
  end

end
