# frozen_string_literal: true

# Contains the data for the application
# Each record was an old card catalog item
class Record < ApplicationRecord
  def self.search(term:, field: 'title')
    return Record.all if term.blank?

    Record.where(Record.arel_table[field.to_sym].matches("%#{term}%"))
  end
end
