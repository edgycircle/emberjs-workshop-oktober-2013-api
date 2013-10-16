class TimeEntriesController < ApplicationController
  respond_to :json

  def index
    respond_with TimeEntry.all
  end

  def active
    respond_with TimeEntry.where(ended_at: nil).first
  end

  def create
    @time_entry = TimeEntry.new time_entry_params

    if @time_entry.save
      respond_with @time_entry
    else
      head :unprocessable_entity
    end
  end

  def update
    @time_entry = TimeEntry.find(params[:id])

    if @time_entry.update_attributes(time_entry_params)
      respond_with @time_entry
    else
      head :unprocessable_entity
    end
  end

  private
  def time_entry_params
    params.require(:time_entry).permit(:started_at, :ended_at, :task_id)
  end
end
