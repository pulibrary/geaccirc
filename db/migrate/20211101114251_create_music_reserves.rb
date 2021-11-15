class CreateMusicReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :music_reserves do |t|
      t.string :course_no
      t.string :rec_title
      t.string :call_no
      t.string :composer
      t.string :file_name
      t.string :file_note

      t.timestamps
    end
  end
end
