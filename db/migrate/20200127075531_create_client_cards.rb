class CreateClientCards < ActiveRecord::Migration[5.2]
  def change
    create_table :client_cards do |t|
      t.text :title
      t.integer :many
      t.text :description
      t.date :deadlines
      t.integer :contract_id
      t.integer :action_id
      t.integer :source_id
      t.references :user, index: true

      t.timestamps null: false
    end

      add_foreign_key :client_cards, :users
      add_index :client_cards, [:user_id, :created_at]
  end
end
