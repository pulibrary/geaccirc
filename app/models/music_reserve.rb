# frozen_string_literal: true

# Contains the data for the music reserve portion of the application
# Each record was an old music reserve item
class MusicReserve < ApplicationRecord
  def self.search(term:, field: 'rec_title')
    return all if term.blank?

    where("#{field} ilike ?", "%#{term}%")
  end
end
