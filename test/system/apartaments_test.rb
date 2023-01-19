require "application_system_test_case"

class ApartamentsTest < ApplicationSystemTestCase
  setup do
    @apartament = apartaments(:one)
  end

  test "visiting the index" do
    visit apartaments_url
    assert_selector "h1", text: "Apartaments"
  end

  test "should create apartament" do
    visit apartaments_url
    click_on "New apartament"

    fill_in "Bagno", with: @apartament.bagno
    fill_in "Cucina", with: @apartament.cucina
    fill_in "Luogo", with: @apartament.luogo
    check "Piscina" if @apartament.piscina
    fill_in "Titolo", with: @apartament.titolo
    check "Vista mare" if @apartament.vista_mare
    click_on "Create Apartament"

    assert_text "Apartament was successfully created"
    click_on "Back"
  end

  test "should update Apartament" do
    visit apartament_url(@apartament)
    click_on "Edit this apartament", match: :first

    fill_in "Bagno", with: @apartament.bagno
    fill_in "Cucina", with: @apartament.cucina
    fill_in "Luogo", with: @apartament.luogo
    check "Piscina" if @apartament.piscina
    fill_in "Titolo", with: @apartament.titolo
    check "Vista mare" if @apartament.vista_mare
    click_on "Update Apartament"

    assert_text "Apartament was successfully updated"
    click_on "Back"
  end

  test "should destroy Apartament" do
    visit apartament_url(@apartament)
    click_on "Destroy this apartament", match: :first

    assert_text "Apartament was successfully destroyed"
  end
end
