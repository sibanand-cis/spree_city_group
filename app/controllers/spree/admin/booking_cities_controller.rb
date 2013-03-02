class Spree::Admin::BookingCitiesController < Spree::Admin::BaseController
  # GET /booking_cities
  # GET /booking_cities.json
  def index
    @booking_cities = BookingCity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @booking_cities }
    end
  end

  # GET /booking_cities/1
  # GET /booking_cities/1.json
  def show
    @booking_city = BookingCity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking_city }
    end
  end

  # GET /booking_cities/new
  # GET /booking_cities/new.json
  def new
    
    @booking_city = BookingCity.new
   
    @booking_countries = BookingCountry.all
    @booking_groups = BookingGroup.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booking_city }
    end
  end

  # GET /booking_cities/1/edit
  def edit
    @booking_city = BookingCity.find(params[:id])
    @booking_countries = BookingCountry.all
    @booking_groups = BookingGroup.all


  end

  # POST /booking_cities
  # POST /booking_cities.json
  def create

    @booking_city = BookingCity.new(params[:booking_city])
    respond_to do |format|
      if @booking_city.save
        format.html { redirect_to [:admin,@booking_city], notice: 'Booking city was successfully created.' }
        format.json { render json: [:admin,@booking_city], status: :created, location: @booking_city }
      else
        format.html { render action: "new" }
        format.json { render json: @booking_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /booking_cities/1
  # PUT /booking_cities/1.json
  def update
    @booking_city = BookingCity.find(params[:id])

    respond_to do |format|
      if @booking_city.update_attributes(params[:booking_city])
        format.html { redirect_to [:admin,@booking_city], notice: 'Booking city was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_cities/1
  # DELETE /booking_cities/1.json
  def destroy
    @booking_city = BookingCity.find(params[:id])
    @booking_city.destroy

    respond_to do |format|
      format.html { redirect_to admin_booking_cities_url }
      format.json { head :no_content }
    end
  end

end
