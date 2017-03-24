class TodotwosController < ApplicationController
  before_action :set_todotwo, only: [:show, :edit, :update, :destroy]

  # GET /todotwos
  # GET /todotwos.json
  def index
    @todotwos = Todotwo.all
  end

  # GET /todotwos/1
  # GET /todotwos/1.json
  def show
  end

  # GET /todotwos/new
  def new
    @todotwo = Todotwo.new
  end

  # GET /todotwos/1/edit
  def edit
  end

  # POST /todotwos
  # POST /todotwos.json
  def create
    @todotwo = Todotwo.new(todotwo_params)

    respond_to do |format|
      if @todotwo.save
        format.html { redirect_to @todotwo, notice: 'Todotwo was successfully created.' }
        format.json { render :show, status: :created, location: @todotwo }
      else
        format.html { render :new }
        format.json { render json: @todotwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todotwos/1
  # PATCH/PUT /todotwos/1.json
  def update
    respond_to do |format|
      if @todotwo.update(todotwo_params)
        format.html { redirect_to @todotwo, notice: 'Todotwo was successfully updated.' }
        format.json { render :show, status: :ok, location: @todotwo }
      else
        format.html { render :edit }
        format.json { render json: @todotwo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todotwos/1
  # DELETE /todotwos/1.json
  def destroy
    @todotwo.destroy
    respond_to do |format|
      format.html { redirect_to todotwos_url, notice: 'Todotwo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todotwo
      @todotwo = Todotwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todotwo_params
      params.require(:todotwo).permit(:task, :whendue)
    end
end
