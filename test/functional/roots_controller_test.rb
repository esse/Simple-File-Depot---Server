require 'test_helper'

class RootsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response 200
    assert_template 'index'
  end
  
#  def test_show
#    get :show
#    assert_template 'show'
#  end
#
#  def test_new
#    get :new
#    assert_template 'new'
#  end
#
#  def test_create_invalid
#    Root.any_instance.stubs(:valid?).returns(false)
#    post :create
#    assert_template 'new'
#  end
#
#  def test_create_valid
#    Root.any_instance.stubs(:valid?).returns(true)
#    post :create
#    assert_redirected_to root_url(assigns(:root))
#  end
#
#  def test_edit
#    get :edit, :id => Root.first
#    assert_template 'edit'
#  end
#
#  def test_update_invalid
#    Root.any_instance.stubs(:valid?).returns(false)
#    put :update, :id => Root.first
#    assert_template 'edit'
#  end
#
#  def test_update_valid
#    Root.any_instance.stubs(:valid?).returns(true)
#    put :update, :id => Root.first
#    assert_redirected_to root_url(assigns(:root))
#  end
#
#  def test_destroy
#    root = Root.first
#    delete :destroy, :id => root
#    assert_redirected_to roots_url
#    assert !Root.exists?(root.id)
#  end
end
