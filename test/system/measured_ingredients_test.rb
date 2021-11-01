require "application_system_test_case"

class MeasuredIngredientsTest < ApplicationSystemTestCase
  setup do
    @measured_ingredient = measured_ingredients(:one)
  end

  test "visiting the index" do
    visit measured_ingredients_url
    assert_selector "h1", text: "Measured Ingredients"
  end

  test "creating a Measured ingredient" do
    visit measured_ingredients_url
    click_on "New Measured Ingredient"

    fill_in "Amount", with: @measured_ingredient.amount
    fill_in "Dish", with: @measured_ingredient.dish_id
    fill_in "Ingredients", with: @measured_ingredient.ingredients_id
    fill_in "Measurements", with: @measured_ingredient.measurements_id
    click_on "Create Measured ingredient"

    assert_text "Measured ingredient was successfully created"
    click_on "Back"
  end

  test "updating a Measured ingredient" do
    visit measured_ingredients_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @measured_ingredient.amount
    fill_in "Dish", with: @measured_ingredient.dish_id
    fill_in "Ingredients", with: @measured_ingredient.ingredients_id
    fill_in "Measurements", with: @measured_ingredient.measurements_id
    click_on "Update Measured ingredient"

    assert_text "Measured ingredient was successfully updated"
    click_on "Back"
  end

  test "destroying a Measured ingredient" do
    visit measured_ingredients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Measured ingredient was successfully destroyed"
  end
end
