require "application_system_test_case"

class ExplainsTest < ApplicationSystemTestCase
  setup do
    @explain = explains(:one)
  end

  test "visiting the index" do
    visit explains_url
    assert_selector "h1", :text => "Explains"
  end

  test "creating a Explain" do
    visit explains_url
    click_on "New Explain"

    fill_in "Image1", :with => @explain.image1
    fill_in "Image2", :with => @explain.image2
    fill_in "Image3", :with => @explain.image3
    fill_in "Precedure1", :with => @explain.precedure1
    fill_in "Precedure2", :with => @explain.precedure2
    fill_in "Precedure3", :with => @explain.precedure3
    fill_in "Title", :with => @explain.title
    click_on "Create Explain"

    assert_text "Explain was successfully created"
    click_on "Back"
  end

  test "updating a Explain" do
    visit explains_url
    click_on "Edit", :match => :first

    fill_in "Image1", :with => @explain.image1
    fill_in "Image2", :with => @explain.image2
    fill_in "Image3", :with => @explain.image3
    fill_in "Precedure1", :with => @explain.precedure1
    fill_in "Precedure2", :with => @explain.precedure2
    fill_in "Precedure3", :with => @explain.precedure3
    fill_in "Title", :with => @explain.title
    click_on "Update Explain"

    assert_text "Explain was successfully updated"
    click_on "Back"
  end

  test "destroying a Explain" do
    visit explains_url
    page.accept_confirm do
      click_on "Destroy", :match => :first
    end

    assert_text "Explain was successfully destroyed"
  end
end
