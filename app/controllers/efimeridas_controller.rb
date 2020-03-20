# frozen_string_literal: true

class EfimeridasController < ApplicationController
  before_action :set_efimerida, only: %i[show edit update destroy]

  # GET /efimeridas
  # GET /efimeridas.json
  def index
    @efimeridas = Efimerida.all
  end

  # GET /efimeridas/1
  # GET /efimeridas/1.json
  def show; end

  # GET /efimeridas/new
  def new
    @efimerida = Efimerida.new
  end

  # GET /efimeridas/1/edit
  def edit; end

  # POST /efimeridas
  # POST /efimeridas.json
  def create
    @efimerida = Efimerida.new(efimerida_params)

    respond_to do |format|
      if @efimerida.save
        format.html { redirect_to @efimerida, notice: 'Efimerida was successfully created.' }
        format.json { render :show, status: :created, location: @efimerida }
      else
        format.html { render :new }
        format.json { render json: @efimerida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /efimeridas/1
  # PATCH/PUT /efimeridas/1.json
  def update
    respond_to do |format|
      if @efimerida.update(efimerida_params)
        format.html { redirect_to @efimerida, notice: 'Efimerida was successfully updated.' }
        format.json { render :show, status: :ok, location: @efimerida }
      else
        format.html { render :edit }
        format.json { render json: @efimerida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /efimeridas/1
  # DELETE /efimeridas/1.json
  def destroy
    @efimerida.destroy
    respond_to do |format|
      format.html { redirect_to efimeridas_url, notice: 'Efimerida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_efimerida
    @efimerida = Efimerida.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def efimerida_params
    params.require(:efimerida).permit(:text, :date, :category_id, :attachment)
  end
end
