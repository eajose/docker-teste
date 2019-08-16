class ContratacaosController < ApplicationController
  before_action :set_contratacao, only: [:show, :edit, :update, :destroy]

  # GET /contratacaos
  # GET /contratacaos.json
  def index
    @contratacaos = Contratacao.all
  end

  # GET /contratacaos/1
  # GET /contratacaos/1.json
  def show
  end

  # GET /contratacaos/new
  def new
    @contratacao = Contratacao.new
  end

  # GET /contratacaos/1/edit
  def edit
  end

  # POST /contratacaos
  # POST /contratacaos.json
  def create
    @contratacao = Contratacao.new(contratacao_params)

    respond_to do |format|
      if @contratacao.save
        format.html { redirect_to @contratacao, notice: 'Contratacao was successfully created.' }
        format.json { render :show, status: :created, location: @contratacao }
      else
        format.html { render :new }
        format.json { render json: @contratacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratacaos/1
  # PATCH/PUT /contratacaos/1.json
  def update
    respond_to do |format|
      if @contratacao.update(contratacao_params)
        format.html { redirect_to @contratacao, notice: 'Contratacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratacao }
      else
        format.html { render :edit }
        format.json { render json: @contratacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratacaos/1
  # DELETE /contratacaos/1.json
  def destroy
    @contratacao.destroy
    respond_to do |format|
      format.html { redirect_to contratacaos_url, notice: 'Contratacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratacao
      @contratacao = Contratacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratacao_params
      params.require(:contratacao).permit(:Data_admissao, :date, :Data_demissao, :Registro_funcionario)
    end
end
