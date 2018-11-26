class ZonesController < ApplicationController
  before_action :set_zone, only: [:show, :edit, :update, :destroy]

  # GET /zones
  # GET /zones.json
  def index
    @zones = Zone.all
  end

  # GET /zones/1
  # GET /zones/1.json
  def show
    @zone = Zone.find(params[:id])

    respond_to do |format|
      format.html
      format.json {render :json => @zone}
    end
  end

  # GET /zones/new
  def new
    @zone = Zone.new

    respond_to do |format|
      format.html
      format.json {render :json => @zone}
    end
  end

  # GET /zones/1/edit
  def edit
    @zone = Zone.find(params[:id])
  end

  # POST /zones
  # POST /zones.json
  def create
    @zone = Zone.new(zone_params)

    respond_to do |format|
      if @zone.save
        format.html  { redirect_to(@zone,
                      :notice => 'Zone was successfully created.') }
        format.json  { render :json => @zone,
                      :status => :created, :location => @zone }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => @zone.errors,
                      :status => :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zones/1
  # PATCH/PUT /zones/1.json
  def update
    @zone = Zone.find(params[:id])
  
      respond_to do |format|
        if @zone.update(zone_params)
          format.html  { redirect_to(@zone,
                        :notice => 'Zone was successfully updated.') }
          format.json  { head :no_content }
        else
          format.html  { render :action => "edit" }
          format.json  { render :json => @zone.errors,
                        :status => :unprocessable_entity }
        end
      end
    end

  # DELETE /zones/1
  # DELETE /zones/1.json
  def destroy
    @zone = Zone.find(params[:id])
    @zone.destroy

    respond_to do |format|
      format.html { redirect_to zones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zone
      @zone = Zone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zone_params
      params.require(:zone).permit(:name, :description, :adress)
    end
end