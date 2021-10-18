# frozen_string_literal: true

json.extract! record, :id, :barcode, :author, :title, :call_no, :sub_loc, :location, :copy, :status, :created_at,
              :updated_at
json.url record_url(record, format: :json)
