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
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = "Check the note form, something went wrong."
      render root_path
    end
  end

  def destroy
    @note = @assignment.notes.find(params[:id])

    if @note.user_id == current_user.id
      @note.destroy
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
end

  private

  def note_params
    params.require(:note).permit(:content)
  end

  def set_assignment
    @assignment = Assignment.find(params[:assignment_id])
  end
end
