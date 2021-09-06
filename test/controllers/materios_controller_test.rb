require "test_helper"

class MateriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materio = materios(:one)
  end

  test "should get index" do
    get materios_url
    assert_response :success
  end

  test "should get new" do
    get new_materio_url
    assert_response :success
  end

  test "should create materio" do
    assert_difference('Materio.count') do
      post materios_url, params: { materio: { Company: @materio.Company, apr_budget: @materio.apr_budget, optional: @materio.optional, your_email: @materio.your_email, your_name: @materio.your_name } }
    end

    assert_redirected_to materio_url(Materio.last)
  end

  test "should show materio" do
    get materio_url(@materio)
    assert_response :success
  end

  test "should get edit" do
    get edit_materio_url(@materio)
    assert_response :success
  end

  test "should update materio" do
    patch materio_url(@materio), params: { materio: { Company: @materio.Company, apr_budget: @materio.apr_budget, optional: @materio.optional, your_email: @materio.your_email, your_name: @materio.your_name } }
    assert_redirected_to materio_url(@materio)
  end

  test "should destroy materio" do
    assert_difference('Materio.count', -1) do
      delete materio_url(@materio)
    end

    assert_redirected_to materios_url
  end
end
