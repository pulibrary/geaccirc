# frozen_string_literal: true

# Controller for viewing and searching music_reserves
#
class MusicReservesController < ApplicationController
  include Pagy::Backend
  before_action :set_music_reserve, only: %i[show]

  # GET /music_reserves or /music_reserves.json
  def index
    @pagy, @music_reserves = pagy(MusicReserve.search(term: params[:search], field: params.fetch(:field, 'rec_title')))
  end

  # GET /music_reserves/1 or /music_reserves/1.json
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_music_reserve
    @music_reserve = MusicReserve.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def music_reserve_params
    params.require(:music_reserve).permit(:course_no, :rec_title, :call_no, :composer, :file_name, :file_note)
  end
end
