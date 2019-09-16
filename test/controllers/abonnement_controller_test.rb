require 'test_helper'

class AbonnementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abonnement_index_url
    assert_response :success
  end

end
