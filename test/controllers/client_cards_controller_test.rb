require 'test_helper'

class ClientCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_card = client_cards(:one)
  end

  test "should get index" do
    get client_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_client_card_url
    assert_response :success
  end

  test "should create client_card" do
    assert_difference('ClientCard.count') do
      post client_cards_url, params: { client_card: { action_id: @client_card.action_id, contract_id: @client_card.contract_id, deadlines: @client_card.deadlines, description: @client_card.description, many: @client_card.many, title: @client_card.title, user_id: @client_card.user_id } }
    end

    assert_redirected_to client_card_url(ClientCard.last)
  end

  test "should show client_card" do
    get client_card_url(@client_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_card_url(@client_card)
    assert_response :success
  end

  test "should update client_card" do
    patch client_card_url(@client_card), params: { client_card: { action_id: @client_card.action_id, contract_id: @client_card.contract_id, deadlines: @client_card.deadlines, description: @client_card.description, many: @client_card.many, title: @client_card.title, user_id: @client_card.user_id } }
    assert_redirected_to client_card_url(@client_card)
  end

  test "should destroy client_card" do
    assert_difference('ClientCard.count', -1) do
      delete client_card_url(@client_card)
    end

    assert_redirected_to client_cards_url
  end
end
