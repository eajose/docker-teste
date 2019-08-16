class FormacaosController < ApplicationController
  before_action :set_formacao, only: [:show, :edit, :update, :destroy]

  # GET /formacaos
  # GET /formacaos.json
  def index
    @formacaos = Formacao.all
  end

  # GET /formacaos/1
  # GET /formacaos/1.json
  def show
  end

  # GET /formacaos/new
  def new
    @formacao = Formacao.new
  end

  # GET /formacaos/1/edit
  def edit
  end

  # POST /formacaos
  # POST /formacaos.json
  def create
    @formacao = Formacao.new(formacao_params)

    respond_to do |format|
      if @formacao.save
        format.html { redirect_to @formacao, notice: 'Formacao was successfully created.' }
        format.json { render :show, status: :created, location: @formacao }
      else
        format.html { render :new }
        format.json { render json: @formacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formacaos/1
  # PATCH/PUT /formacaos/1.json
  def update
    respond_to do |format|
      if @formacao.update(formacao_params)
        format.html { redirect_to @formacao, notice: 'Formacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @formacao }
      else
        format.html { render :edit }
        format.json { render json: @formacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formacaos/1
  # DELETE /formacaos/1.json
  def destroy
    @formacao.destroy
    respond_to do |format|
      format.html { redirect_to formacaos_url, notice: 'Formacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formacao
      @formacao = Formacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formacao_params
      params.require(:formacao).permit(:Nome_curso, :Nome_instituicao, :Data_inicio, :Data_formacao)
    end
end
