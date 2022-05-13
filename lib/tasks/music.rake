# frozen_string_literal: true

require 'csv'

namespace :music do
  desc 'Load the music data into the database'
  task load_data: :environment do
    CSV.parse(File.open(Rails.root.join('MusicReserves_double_quote.csv'), encoding: 'bom|utf-8'),
              headers: true) do |row|
      begin
        MusicReserve.create(row.to_h.transform_keys(&:underscore))
      rescue CSV::MalformedCSVError => error
        puts error
        puts row
      rescue StandardError => error
        puts error
        puts row
      end
    end

    Rails.logger.warn("Created #{MusicReserve.count} Music Reserves")
  end
end
