require 'test_helper'

class ProjectEulersControllerTest < ActionController::TestCase
  setup do
    @project_euler = project_eulers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_eulers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_euler" do
    assert_difference('ProjectEuler.count') do
      post :create, project_euler: { date: @project_euler.date, post: @project_euler.post, title: @project_euler.title }
    end

    assert_redirected_to project_euler_path(assigns(:project_euler))
  end

  test "should show project_euler" do
    get :show, id: @project_euler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_euler
    assert_response :success
  end

  test "should update project_euler" do
    patch :update, id: @project_euler, project_euler: { date: @project_euler.date, post: @project_euler.post, title: @project_euler.title }
    assert_redirected_to project_euler_path(assigns(:project_euler))
  end

  test "should destroy project_euler" do
    assert_difference('ProjectEuler.count', -1) do
      delete :destroy, id: @project_euler
    end

    assert_redirected_to project_eulers_path
  end
end
