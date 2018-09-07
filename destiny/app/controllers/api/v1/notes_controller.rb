class Api::V1::NotesController < ApplicationController
  def index
    @character = Character.find(params[:character_id])
    render json: @character.notes
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @character = Character.find(params[:character_id])
    @notes = @character.notes
    render json: @character.notes
  end

  # POST /notes
  # POST /notes.json
  def create
    @character = Character.find(params[:character_id])
    @note = note.new(note_params)

    if @note.save
      render :show, status: :created, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    if @note.update(note_params)
      render :show, status: :ok, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:character_id, :body)
    end
end
