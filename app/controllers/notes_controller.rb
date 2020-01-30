class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
      end 

      def show
        note = Note.find_by(id: params[:id])
        render json: note
    end 
    
      def create
        note = Note.create(Note_params)
        render json: note
      end
    
      def update
        note = Note.find_by(params[:id])
        render json: note
      end 
    
      def destroy
        data = {message: "Note has been deleted"}
        note = Note.find(params[:id])
        note.delete()
        render json: data 
      end 

    private

    def note_params
        params.require(:note).permit(:id, :bake_id, :title, :content)
    end
end
