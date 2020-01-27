json.extract! client_card, :id, :title, :user_id, :many, :description, :deadlines, :contract_id, :action_id, :created_at, :updated_at
json.url client_card_url(client_card, format: :json)
