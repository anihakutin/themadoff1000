# frozen_string_literal: true

class CreateMadoffs < ActiveRecord::Migration[7.0]
  def change
    create_table :madoffs, id: :uuid do |t|
      t.string :name
      t.integer :age
      t.string :company_name
      t.string :con
      t.string :wiki_link
      t.integer :upvotes, default: 0
      t.string :current_status

      t.timestamps
    end
  end
end
