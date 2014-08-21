class UsersongsController < ApplicationController
  before_action :set_usersong, only: [:show, :edit, :update, :destroy]

  # GET /usersongs
  def index
    @usersongs = Usersong.all
  end

  # GET /usersongs/1
  def show
  end

  # GET /usersongs/new
  def new
    @usersong = Usersong.new
  end

  # GET /usersongs/1/edit
  def edit
  end

  # POST /usersongs
  def create
    @usersong = Usersong.new(usersong_params)

    if @usersong.save
      redirect_to @usersong, notice: 'Usersong was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /usersongs/1
  def update
    if @usersong.update(usersong_params)
      redirect_to @usersong, notice: 'Usersong was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /usersongs/1
  def destroy
    @usersong.destroy
    redirect_to usersongs_url, notice: 'Usersong was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usersong
      @usersong = Usersong.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usersong_params
      params.require(:usersong).permit(:user_id, :song_id, :status_id)
    end
end
