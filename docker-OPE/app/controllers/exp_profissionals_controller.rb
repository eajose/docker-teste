class ExpProfissionalsController < ApplicationController
  before_action :set_exp_profissional, only: [:show, :edit, :update, :destroy]

  # GET /exp_profissionals
  # GET /exp_profissionals.json
  def index
    @exp_profissionals = ExpProfissional.all
  end

  # GET /exp_profissionals/1
  # GET /exp_profissionals/1.json
  def show
  end

  # GET /exp_profissionals/new
  def new
    @exp_profissional = ExpProfissional.new
  end

  # GET /exp_profissionals/1/edit
  def edit
  end

  # POST /exp_profissionals
  # POST /exp_profissionals.json
  def create
    @exp_profissional = ExpProfissional.new(exp_profissional_params)

    respond_to do |format|
      if @exp_profissional.save
        format.html { redirect_to @exp_profissional, notice: 'Exp profissional was successfully created.' }
        format.json { render :show, status: :created, location: @exp_profissional }
      else
        format.html { render :new }
        format.json { render json: @exp_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exp_profissionals/1
  # PATCH/PUT /exp_profissionals/1.json
  def update
    respond_to do |format|
      if @exp_profissional.update(exp_profissional_params)
        format.html { redirect_to @exp_profissional, notice: 'Exp profissional was successfully updated.' }
        format.json { render :show, status: :ok, location: @exp_profissional }
      else
        format.html { render :edit }
        format.json { render json: @exp_profissional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exp_profissionals/1
  # DELETE /exp_profissionals/1.json
  def destroy
    @exp_profissional.destroy
    respond_to do |format|
      format.html { redirect_to exp_profissionals_url, notice: 'Exp profissional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exp_profissional
      @exp_profissional = ExpProfissional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exp_profissional_params
      params.require(:exp_profissional).permit(:Nome_Empresa, :Cargo, :Data_admissao, :Data_saida)
    end
end
