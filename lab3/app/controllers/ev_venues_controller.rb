class EvVenuesController < ApplicationController
  before_action :set_ev_venue, only: [:show, :edit, :update, :destroy]

  # GET /ev_venues
  # GET /ev_venues.json
  def index
    @ev_venues = EvVenue.all
  end

  # GET /ev_venues/1
  # GET /ev_venues/1.json
  def show
  end

  # GET /ev_venues/new
  def new
    @ev_venue = EvVenue.new
  end

  # GET /ev_venues/1/edit
  def edit
  end

  # POST /ev_venues
  # POST /ev_venues.json
  def create
    @ev_venue = EvVenue.new(ev_venue_params)

    respond_to do |format|
      if @ev_venue.save
        format.html { redirect_to @ev_venue, notice: 'Ev venue was successfully created.' }
        format.json { render :show, status: :created, location: @ev_venue }
      else
        format.html { render :new }
        format.json { render json: @ev_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ev_venues/1
  # PATCH/PUT /ev_venues/1.json
  def update
    respond_to do |format|
      if @ev_venue.update(ev_venue_params)
        format.html { redirect_to @ev_venue, notice: 'Ev venue was successfully updated.' }
        format.json { render :show, status: :ok, location: @ev_venue }
      else
        format.html { render :edit }
        format.json { render json: @ev_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ev_venues/1
  # DELETE /ev_venues/1.json
  def destroy
    @ev_venue.destroy
    respond_to do |format|
      format.html { redirect_to ev_venues_url, notice: 'Ev venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ev_venue
      @ev_venue = EvVenue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ev_venue_params
      params.require(:ev_venue).permit(:name, :address, :capacity)
    end
end
