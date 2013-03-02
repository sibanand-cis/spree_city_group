class Spree::Admin::BookingGroupsController < Spree::Admin::BaseController
	def new
		@booking_group = BookingGroup.new
	end

	def create
		@booking_group = BookingGroup.new(params[:booking_group])
		 respond_to do |format|
      if @booking_group.save
        format.html { redirect_to [:admin,@booking_group], notice: 'Booking city was successfully created.' }
        format.json { render json: [:admin,@booking_group], status: :created, location: @booking_group }
      else
        format.html { render action: "new" }
        format.json { render json: @booking_group.errors, status: :unprocessable_entity }
      end
    end
	end

	def show
		@booking_group = BookingGroup.find(params[:id])
	end

	def index
		@booking_groups = BookingGroup.all
	end

	def edit
		@booking_group = BookingGroup.find(params[:id])
	end

	def update
		@booking_group = BookingGroup.find(params[:id])
		respond_to do |format|
      if @booking_group.update_attributes(params[:booking_group])
        format.html { redirect_to [:admin,@booking_group], notice: 'Booking city was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking_group.errors, status: :unprocessable_entity }
      end
    end
	end

 def destroy
 	  @booking_group = BookingGroup.find(params[:id])
    @booking_group.destroy

    respond_to do |format|
      format.html { redirect_to admin_booking_groups_url }
      format.json { head :no_content }
    end


  end
end
