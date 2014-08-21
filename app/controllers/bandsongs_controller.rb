class BandsongsController < ApplicationController
  before_action :set_bandsong, only: [:show, :edit, :update, :destroy]

  # GET /bandsongs
  def index
    @bandsongs = Bandsong.all
  end

  # GET /bandsongs/1
  def show
  end

  # GET /bandsongs/new
  def new
    @bandsong = Bandsong.new
  end

  # GET /bandsongs/1/edit
  def edit
  end

  # POST /bandsongs
  def create
    @bandsong = Bandsong.new(bandsong_params)

    if @bandsong.save
      redirect_to @bandsong, notice: 'Bandsong was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bandsongs/1
  def update
    if @bandsong.update(bandsong_params)
      redirect_to @bandsong, notice: 'Bandsong was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bandsongs/1
  def destroy
    @bandsong.destroy
    redirect_to bandsongs_url, notice: 'Bandsong was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bandsong
      @bandsong = Bandsong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bandsong_params
      params.require(:bandsong).permit(:band_id, :song_id)
    end
end
