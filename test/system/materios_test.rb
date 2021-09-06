require "application_system_test_case"

class MateriosTest < ApplicationSystemTestCase
  setup do
    @materio = materios(:one)
  end

  test "visiting the index" do
    visit materios_url
    assert_selector "h1", text: "Materios"
  end

  test "creating a Materio" do
    visit materios_url
    click_on "New Materio"

    fill_in "Company", with: @materio.Company
    fill_in "Apr budget", with: @materio.apr_budget
    fill_in "Optional", with: @materio.optional
    fill_in "Your email", with: @materio.your_email
    fill_in "Your name", with: @materio.your_name
    click_on "Create Materio"

    assert_text "Materio was successfully created"
    click_on "Back"
  end

  test "updating a Materio" do
    visit materios_url
    click_on "Edit", match: :first

    fill_in "Company", with: @materio.Company
    fill_in "Apr budget", with: @materio.apr_budget
    fill_in "Optional", with: @materio.optional
    fill_in "Your email", with: @materio.your_email
    fill_in "Your name", with: @materio.your_name
    click_on "Update Materio"

    assert_text "Materio was successfully updated"
    click_on "Back"
  end

  test "destroying a Materio" do
    visit materios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Materio was successfully destroyed"
  end
end
