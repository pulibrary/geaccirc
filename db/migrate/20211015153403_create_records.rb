# frozen_string_literal: true

class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :barcode
      t.string :author
      t.string :title
      t.string :call_no
      t.string :sub_loc
      t.string :location
      t.string :copy
      t.string :status

      t.timestamps
    end
  end
end
