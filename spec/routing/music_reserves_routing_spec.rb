# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MusicReservesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/music_reserves').to route_to('music_reserves#index')
    end

    it 'routes to #show' do
      expect(get: '/music_reserves/1').to route_to('music_reserves#show', id: '1')
    end
  end
end
