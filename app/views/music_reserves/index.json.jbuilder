# frozen_string_literal: true

json.array! @music_reserves, partial: 'music_reserves/music_reserve', as: :music_reserve
