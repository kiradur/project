class CreateClientCards < ActiveRecord::Migration[5.2]
  def change
    create_table :client_cards do |t|
      t.text :title
      t.integer :user_id
      t.integer :many
      t.text :description
      t.date :deadlines
      t.integer :contract_id
      t.integer :action_id
      t.integer :source_id

      t.timestamps
    end
  end
end
