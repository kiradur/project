require "application_system_test_case"

class ClientCardsTest < ApplicationSystemTestCase
  setup do
    @client_card = client_cards(:one)
  end

  test "visiting the index" do
    visit client_cards_url
    assert_selector "h1", text: "Client Cards"
  end

  test "creating a Client card" do
    visit client_cards_url
    click_on "New Client Card"

    fill_in "Action", with: @client_card.action_id
    fill_in "Contract", with: @client_card.contract_id
    fill_in "Deadlines", with: @client_card.deadlines
    fill_in "Description", with: @client_card.description
    fill_in "Many", with: @client_card.many
    fill_in "Title", with: @client_card.title
    fill_in "User", with: @client_card.user_id
    click_on "Create Client card"

    assert_text "Client card was successfully created"
    click_on "Back"
  end

  test "updating a Client card" do
    visit client_cards_url
    click_on "Edit", match: :first

    fill_in "Action", with: @client_card.action_id
    fill_in "Contract", with: @client_card.contract_id
    fill_in "Deadlines", with: @client_card.deadlines
    fill_in "Description", with: @client_card.description
    fill_in "Many", with: @client_card.many
    fill_in "Title", with: @client_card.title
    fill_in "User", with: @client_card.user_id
    click_on "Update Client card"

    assert_text "Client card was successfully updated"
    click_on "Back"
  end

  test "destroying a Client card" do
    visit client_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client card was successfully destroyed"
  end
end
