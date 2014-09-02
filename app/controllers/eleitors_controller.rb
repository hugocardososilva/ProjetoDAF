class EleitorsController < ApplicationController
  before_action :set_eleitor, only: [:show, :edit, :update, :destroy]

  # GET /eleitors
  # GET /eleitors.json
  def index
    @eleitors = Eleitor.all.page params['page']
  end

  # GET /eleitors/1
  # GET /eleitors/1.json
  def show
  end

  # GET /eleitors/new
  def new
    @eleitor = Eleitor.new
  end

  # GET /eleitors/1/edit
  def edit
  end

  # POST /eleitors
  # POST /eleitors.json
  def create
    @eleitor = Eleitor.new(eleitor_params)

    respond_to do |format|
      if @eleitor.save
        EleitorMailer.welcome_email(@eleitor).deliver
        format.html { redirect_to @eleitor, notice: 'Eleitor was successfully created.' }
        format.json { render :show, status: :created, location: @eleitor }
      else
        format.html { render :new }
        format.json { render json: @eleitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eleitors/1
  # PATCH/PUT /eleitors/1.json
  def update
    respond_to do |format|
      if @eleitor.update(eleitor_params)
        format.html { redirect_to @eleitor, notice: 'Eleitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @eleitor }
      else
        format.html { render :edit }
        format.json { render json: @eleitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eleitors/1
  # DELETE /eleitors/1.json
  def destroy
    @eleitor.destroy
    respond_to do |format|
      format.html { redirect_to eleitors_url, notice: 'Eleitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eleitor
      @eleitor = Eleitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eleitor_params
      params.require(:eleitor).permit(:nome, :titulo, :endereco, :telefone, :email)
    end
end
