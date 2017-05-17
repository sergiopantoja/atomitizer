class ClipsController < ApplicationController
  before_action :set_clip, only: [:show, :edit, :update, :destroy]

  # GET /clips
  def index
    @clips = Clip.all
  end

  # GET /clips/1
  def show
  end

  # GET /clips/new
  def new
    @clip = Clip.last.dup
    @clip.text = nil
  end

  # GET /clips/1/edit
  def edit
  end

  # POST /clips
  def create
    @clip = Clip.new(clip_params)

    respond_to do |format|
      if @clip.save
        format.html { redirect_to new_clip_path, notice: 'Clip was successfully created.' }
        format.json { render json: {success: true} }
      else
        format.html { render :new }
        format.json { render json: @clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clips/1
  def update
    if @clip.update(clip_params)
      redirect_to @clip, notice: 'Clip was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clips/1
  def destroy
    @clip.destroy
    redirect_to clips_url, notice: 'Clip was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clip
      @clip = Clip.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def clip_params
      params.require(:clip).permit(:text, :page_title, :page_url)
    end
end
