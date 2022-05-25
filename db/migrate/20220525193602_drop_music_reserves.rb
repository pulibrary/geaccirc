class DropMusicReserves < ActiveRecord::Migration[6.1]
  def change
    drop_table 'music_reserves'
  end
end
