# frozen_string_literal: true

class Record < ApplicationRecord
  def self.search(term:, field: 'title')
    return Record.all if term.blank?

    Record.where("#{field} ilike ?", "%#{term}%")
  end
end
