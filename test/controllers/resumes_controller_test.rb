require 'test_helper'

class ResumesControllerTest < ActionController::TestCase
  setup do
    @resume = resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resume" do
    assert_difference('Resume.count') do
      post :create, resume: { address: @resume.address, city: @resume.city, email: @resume.email, name: @resume.name, objective: @resume.objective, phone_number: @resume.phone_number, postal_code: @resume.postal_code, state: @resume.state, title: @resume.title }
    end

    assert_redirected_to resume_path(assigns(:resume))
  end

  test "should show resume" do
    get :show, id: @resume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resume
    assert_response :success
  end

  test "should update resume" do
    patch :update, id: @resume, resume: { address: @resume.address, city: @resume.city, email: @resume.email, name: @resume.name, objective: @resume.objective, phone_number: @resume.phone_number, postal_code: @resume.postal_code, state: @resume.state, title: @resume.title }
    assert_redirected_to resume_path(assigns(:resume))
  end

  test "should destroy resume" do
    assert_difference('Resume.count', -1) do
      delete :destroy, id: @resume
    end

    assert_redirected_to resumes_path
  end
end
