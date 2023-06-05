class AttendeesController < ApplicationController
  before_action :set_attendee, only: %i[ show update destroy ]

  # GET /attendees
  def index
    @attendees = Attendee.all

    render json: @attendees
  end

  # GET /attendees/1
  def show
    render json: @attendee
  end

  # POST /attendees
  def create
    @attendee = Attendee.new(attendee_params)

    if @attendee.save
      render json: @attendee, status: :created, location: @attendee
    else
      render json: @attendee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /attendees/1
  def update
    if @attendee.update(attendee_params)
      render json: @attendee
    else
      render json: @attendee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /attendees/1
  def destroy
    @attendee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendee
      @attendee = Attendee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendee_params
      params.require(:attendee).permit(:name, :company, :position)
    end
end
