class SetlistsongsController < ApplicationController
  before_action :set_setlistsong, only: [:show, :edit, :update, :destroy]

  # GET /setlistsongs
  def index
    @setlistsongs = Setlistsong.all
  end

  # GET /setlistsongs/1
  def show
  end

  # GET /setlistsongs/new
  def new
    @setlistsong = Setlistsong.new
  end

  # GET /setlistsongs/1/edit
  def edit
  end

  # POST /setlistsongs
  def create
    @setlistsong = Setlistsong.new(setlistsong_params)

    if @setlistsong.save
      redirect_to @setlistsong, notice: 'Setlistsong was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /setlistsongs/1
  def update
    if @setlistsong.update(setlistsong_params)
      redirect_to @setlistsong, notice: 'Setlistsong was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /setlistsongs/1
  def destroy
    @setlistsong.destroy
    redirect_to setlistsongs_url, notice: 'Setlistsong was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setlistsong
      @setlistsong = Setlistsong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setlistsong_params
      params.require(:setlistsong).permit(:setlist_id, :song_id, :position)
    end
end
