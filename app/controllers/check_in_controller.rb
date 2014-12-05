class CheckInController < ApplicationController

  def index

    @location = Location.find_by(tag: params[:tag])

  end



  def success

    @participant = Participant.find_by(email: params[:email])

    @participant.visited_locations << params[:location_id].to_i

    @participant.save



    respond_to do |format|

      if @participant.save

        format.html { redirect_to participant_path(@participant), notice: 'Participant was successfully checked in.' }

        format.json { render :show, status: :created, location: @participant }

      else

        format.html { render :new }

        format.json { render json: @participant.errors, status: :unprocessable_entity }

      end

    end

  end

end
