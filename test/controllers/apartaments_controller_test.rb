require "test_helper"

class ApartamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartament = apartaments(:one)
  end

  test "should get index" do
    get apartaments_url
    assert_response :success
  end

  test "should get new" do
    get new_apartament_url
    assert_response :success
  end

  test "should create apartament" do
    assert_difference("Apartament.count") do
      post apartaments_url, params: { apartament: { bagno: @apartament.bagno, cucina: @apartament.cucina, luogo: @apartament.luogo, piscina: @apartament.piscina, titolo: @apartament.titolo, vista_mare: @apartament.vista_mare } }
    end

    assert_redirected_to apartament_url(Apartament.last)
  end

  test "should show apartament" do
    get apartament_url(@apartament)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartament_url(@apartament)
    assert_response :success
  end

  test "should update apartament" do
    patch apartament_url(@apartament), params: { apartament: { bagno: @apartament.bagno, cucina: @apartament.cucina, luogo: @apartament.luogo, piscina: @apartament.piscina, titolo: @apartament.titolo, vista_mare: @apartament.vista_mare } }
    assert_redirected_to apartament_url(@apartament)
  end

  test "should destroy apartament" do
    assert_difference("Apartament.count", -1) do
      delete apartament_url(@apartament)
    end

    assert_redirected_to apartaments_url
  end
end
