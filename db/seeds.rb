# frozen_string_literal: true

require 'csv'

CSV.parse(File.open(Rails.root.join('circ_updated.txt'), encoding: 'ISO-8859-1'), headers: true) do |row|
  Record.create(row.to_h.transform_keys(&:underscore))
end

Rails.logger.warn("Created #{Record.count} Records")
