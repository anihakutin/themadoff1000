# frozen_string_literal: true

class AddConAmountToMadoff < ActiveRecord::Migration[7.0]
  def change
    add_column :madoffs, :con_amount, :bigint
  end
end
