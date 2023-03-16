# frozen_string_literal: true

# Controller for viewing and searching records
#
class RecordsController < ApplicationController
  include Pagy::Backend
  before_action :set_record, only: %i[show edit update]

  # GET /records or /records.json
  def index
    @pagy, @records = pagy(Record.search(term: params[:search], field: params.fetch(:field, 'title')))
  end

  # GET /records/1 or /records/1.json
  def show; end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit; end

  # POST /records or /records.json
  def create
    @record = Record.new(record_params)
    if @record.save
      respond_to do |format|
        format.html { redirect_to @record, notice: I18n.t('record.created') }
        format.json { render :show, status: :created, location: @record }
      end
    else
      parameter_error
    end
  rescue ActionController::ParameterMissing
    parameter_error
  end

  # PATCH/PUT /records/1 or /records/1.json
  def update
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to @record, notice: I18n.t('record.updated') }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  rescue ActionController::ParameterMissing
    parameter_error
  end

  private

  def parameter_error
    respond_to do |format|
      format.html { render :edit, status: :unprocessable_entity }
      format.json { render json: @record.errors, status: :unprocessable_entity }
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_record
    @record = Record.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def record_params
    params.require(:record).permit(:barcode, :author, :title, :call_no, :sub_loc, :location, :copy, :status)
  end
end
