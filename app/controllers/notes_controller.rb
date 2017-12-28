class NotesController < ApplicationController
  before_action :set_assignment

  def index
  @notes = @assignment.notes.order('created_at asc')

  respond_to do |format|
    format.html { render layout: !request.xhr? }
  end
end


  def create
    @note = @assignment.notes.build(note_params)
    @note.user_id = current_user.id

    if @note.save
      flash[:success] = "You added a note!"
      redirect_to :back
    else
      flash[:alert] = "Check the note form, something went horribly wrong."
      render root_path
    end
  end

  def destroy
  @note = @assignment.notes.find(params[:id])

  @note.destroy
  flash[:success] = "Note deleted :("
  redirect_to :back
end

  private

  def note_params
    params.require(:note).permit(:content)
  end

  def set_assignment
    @assignment = Assignment.find(params[:assignment_id])
  end
end
