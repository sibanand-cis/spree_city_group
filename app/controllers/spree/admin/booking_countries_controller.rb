class Spree::Admin::BookingCountriesController < Spree::Admin::BaseController
	 def index
    @booking_countries = BookingCountry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @booking_cities }
    end
  end

  # GET /booking_cities/1
  # GET /booking_cities/1.json
  def show
    @booking_country = BookingCountry.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking_country }
    end
  end

  # GET /booking_cities/new
  # GET /booking_cities/new.json
  def new
    @booking_country = BookingCountry.new
    @booking_groups = BookingGroup.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booking_country }
    end
  end

  # GET /booking_cities/1/edit
  def edit
    @booking_country = BookingCountry.find(params[:id])
    @booking_groups = BookingGroup.all
  end

  # POST /booking_cities
  # POST /booking_cities.json
  def create
    @booking_country = BookingCountry.new(params[:booking_country])

    respond_to do |format|
      if @booking_country.save
        format.html { redirect_to [:admin,@booking_country], notice: 'Booking city was successfully created.' }
        format.json { render json: [:admin,@booking_country], status: :created, location: @booking_country }
      else
        format.html { render action: "new" }
        format.json { render json: @booking_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /booking_cities/1
  # PUT /booking_cities/1.json
  def update
    @booking_country = BookingCountry.find(params[:id])

    respond_to do |format|
      if @booking_country.update_attributes(params[:booking_country])
        format.html { redirect_to [:admin,@booking_country], notice: 'Booking city was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_cities/1
  # DELETE /booking_cities/1.json
  def destroy
    @booking_country = BookingCountry.find(params[:id])
    @booking_country.destroy
    respond_to do |format|
      format.html { redirect_to admin_booking_countries_url }
      format.json { head :no_content }
    end
  end
end
