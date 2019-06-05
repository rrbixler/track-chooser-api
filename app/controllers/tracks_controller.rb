class TracksController < OpenReadController
  before_action :set_track, only: [:show, :update, :destroy]

  # GET /tracks
  def index
    @tracks = current_user.tracks.all

    render json: @tracks
  end

  # GET /tracks/1
  def show
    render json: @track
  end

  # POST /tracks
  def create
    @track = current_user.tracks.build(track_params)

    if @track.save
      render json: @track, status: :created, location: @track
    else
      render json: @track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tracks/1
  def update
    if @track.update(track_params)
      render json: @track
    else
      render json: @track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tracks/1
  def destroy
    @track.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_track
    @track = current_user.tracks.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def track_params
    params.require(:track).permit(:title, :artist, :date, :duration,
                                  :tempo, :keysig)
  end
end
