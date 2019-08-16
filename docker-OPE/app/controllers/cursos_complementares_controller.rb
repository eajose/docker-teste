class CursosComplementaresController < ApplicationController
  before_action :set_cursos_complementare, only: [:show, :edit, :update, :destroy]

  # GET /cursos_complementares
  # GET /cursos_complementares.json
  def index
    @cursos_complementares = CursosComplementare.all
  end

  # GET /cursos_complementares/1
  # GET /cursos_complementares/1.json
  def show
  end

  # GET /cursos_complementares/new
  def new
    @cursos_complementare = CursosComplementare.new
  end

  # GET /cursos_complementares/1/edit
  def edit
  end

  # POST /cursos_complementares
  # POST /cursos_complementares.json
  def create
    @cursos_complementare = CursosComplementare.new(cursos_complementare_params)

    respond_to do |format|
      if @cursos_complementare.save
        format.html { redirect_to @cursos_complementare, notice: 'Cursos complementare was successfully created.' }
        format.json { render :show, status: :created, location: @cursos_complementare }
      else
        format.html { render :new }
        format.json { render json: @cursos_complementare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cursos_complementares/1
  # PATCH/PUT /cursos_complementares/1.json
  def update
    respond_to do |format|
      if @cursos_complementare.update(cursos_complementare_params)
        format.html { redirect_to @cursos_complementare, notice: 'Cursos complementare was successfully updated.' }
        format.json { render :show, status: :ok, location: @cursos_complementare }
      else
        format.html { render :edit }
        format.json { render json: @cursos_complementare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cursos_complementares/1
  # DELETE /cursos_complementares/1.json
  def destroy
    @cursos_complementare.destroy
    respond_to do |format|
      format.html { redirect_to cursos_complementares_url, notice: 'Cursos complementare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cursos_complementare
      @cursos_complementare = CursosComplementare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cursos_complementare_params
      params.require(:cursos_complementare).permit(:Nome_curso, :Nome_instituicao, :Data_inicio, :Data_formacao)
    end
end
