# frozen_string_literal: true

json.extract! music_reserve, :id, :course_no, :rec_title, :call_no, :composer, :file_name, :file_note, :created_at,
              :updated_at
json.url music_reserve_url(music_reserve, format: :json)
