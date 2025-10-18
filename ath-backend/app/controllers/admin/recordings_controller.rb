class Admin::RecordingsController < Admin::BaseController
  def index
    @recordings = Recording.all
  end

  def new
    @recording = Recording.new
  end

  def create
    @recording = Recording.new(recording_params)
    if @recording.save
      redirect_to [:admin, @recording], notice: "Recording was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  private
  def recording_params
    params.require(:recording).permit(
      :sound,
      :quality,
      :comment,
      :attribution,
      :license_id,
      :country_id,
      :gender_id,
      :age_id,
      :call_type_id,
      recording_species_attributes: [:id, :species_id, :role, :_destroy]
    )
  end
end
