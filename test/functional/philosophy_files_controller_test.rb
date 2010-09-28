require 'test_helper'

class PhilosophyFilesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_response :success
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => PhilosophyFile.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    PhilosophyFile.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
#  def test_create_valid
#    PhilosophyFile.any_instance.stubs(:valid?).returns(true)
#    post :create
#    assert_redirected_to philosophy_file_url(assigns(:file))
#  end
  
#  def test_update_invalid
#    PhilosophyFile.any_instance.stubs(:valid?).returns(false)
#    put :update, :id => PhilosophyFile.first
#    assert_template 'edit'
#  end
  
#  def test_update_valid
#    PhilosophyFile.any_instance.stubs(:valid?).returns(true)
#    put :update, :id => PhilosophyFile.first
#    assert_redirected_to philosophy_file_url(assigns(:file))
#  end

end
