class SetlistsController < ApplicationController
  before_action :set_setlist, only: [:show, :edit, :update, :destroy]

  # GET /setlists
  def index
    @setlists = Setlist.all
  end

  # GET /setlists/1
  def show
  end

  # GET /setlists/new
  def new
    @setlist = Setlist.new
  end

  # GET /setlists/1/edit
  def edit
  end

  # POST /setlists
  def create
    @setlist = Setlist.new(setlist_params)

    if @setlist.save
      redirect_to @setlist, notice: 'Setlist was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /setlists/1
  def update
    if @setlist.update(setlist_params)
      redirect_to @setlist, notice: 'Setlist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /setlists/1
  def destroy
    @setlist.destroy
    redirect_to setlists_url, notice: 'Setlist was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_setlist
      @setlist = Setlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def setlist_params
      params.require(:setlist).permit(:name, :description)
    end
end
