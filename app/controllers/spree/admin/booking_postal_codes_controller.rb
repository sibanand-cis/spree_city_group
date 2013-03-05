class Spree::Admin::BookingPostalCodesController < Spree::Admin::BaseController
  # GET /booking_postal_codes
  # GET /booking_postal_codes.json
  def index
    @booking_postal_codes = BookingPostalCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @booking_postal_codes }
    end
  end

  # GET /booking_postal_codes/1
  # GET /booking_postal_codes/1.json
  def show
    @booking_postal_code = BookingPostalCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking_postal_code }
    end
  end

  # GET /booking_postal_codes/new
  # GET /booking_postal_codes/new.json
  def new
    @booking_postal_code = BookingPostalCode.new
    @booking_groups = BookingGroup.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booking_postal_code }
    end
  end

  # GET /booking_postal_codes/1/edit
  def edit
    @booking_postal_code = BookingPostalCode.find(params[:id])
    @booking_groups = BookingGroup.all
  end

  # POST /booking_postal_codes
  # POST /booking_postal_codes.json
  def create
    @booking_postal_code = BookingPostalCode.new(params[:booking_postal_code])

    respond_to do |format|
      if @booking_postal_code.save
        format.html { redirect_to [:admin,@booking_postal_code], notice: 'Booking postal code was successfully created.' }
        format.json { render json: [:admin,@booking_postal_code], status: :created, location: @booking_postal_code }
      else
        format.html { render action: "new" }
        format.json { render json: @booking_postal_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /booking_postal_codes/1
  # PUT /booking_postal_codes/1.json
  def update
    @booking_postal_code = BookingPostalCode.find(params[:id])

    respond_to do |format|
      if @booking_postal_code.update_attributes(params[:booking_postal_code])
        format.html { redirect_to [:admin,@booking_postal_code], notice: 'Booking postal code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking_postal_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_postal_codes/1
  # DELETE /booking_postal_codes/1.json
  def destroy
    @booking_postal_code = BookingPostalCode.find(params[:id])
    @booking_postal_code.destroy

    respond_to do |format|
      format.html { redirect_to admin_booking_postal_codes_url }
      format.json { head :no_content }
    end
  end
end
