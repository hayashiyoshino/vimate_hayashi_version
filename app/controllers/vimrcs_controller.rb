class VimrcsController < ApplicationController
  before_action :set_vimrc, only: [:show, :edit, :update, :destroy]

  # GET /vimrcs
  # GET /vimrcs.json
  def index
    @vimrcs = Vimrc.all
  end

  # GET /vimrcs/1
  # GET /vimrcs/1.json
  def show
  end

  # GET /vimrcs/new
  def new
    @vimrc = Vimrc.new
  end

  # GET /vimrcs/1/edit
  def edit
  end

  # POST /vimrcs
  # POST /vimrcs.json
  def create
    @vimrc = Vimrc.new(vimrc_params)

    respond_to do |format|
      if @vimrc.save
        format.html { redirect_to @vimrc, notice: 'Vimrc was successfully created.' }
        format.json { render :show, status: :created, location: @vimrc }
      else
        format.html { render :new }
        format.json { render json: @vimrc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vimrcs/1
  # PATCH/PUT /vimrcs/1.json
  def update
    respond_to do |format|
      if @vimrc.update(vimrc_params)
        format.html { redirect_to @vimrc, notice: 'Vimrc was successfully updated.' }
        format.json { render :show, status: :ok, location: @vimrc }
      else
        format.html { render :edit }
        format.json { render json: @vimrc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vimrcs/1
  # DELETE /vimrcs/1.json
  def destroy
    @vimrc.destroy
    respond_to do |format|
      format.html { redirect_to vimrcs_url, notice: 'Vimrc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vimrc
      @vimrc = Vimrc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vimrc_params
      params.fetch(:vimrc, {})
    end
end
