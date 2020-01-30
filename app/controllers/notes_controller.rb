class NotesController < ApplicationController

    def index
        notes = Note.all
        render json: notes
      end 

      def show
        Note = Note.find_by(id: params[:id])
        render json: Note
    end 
    
      def create
        Note = Note.create(Note_params)
        render json: Note
      end
    
      def update
        Note = Note.find_by(params[:id])
        render json: Note
      end 
    
      def destroy
        data = {message: "Note has been deleted"}
        Note = Note.find(params[:id])
        Note.delete()
        render json: data 
      end 

    private

    def note_params
        params.require(:note).permit(:id, :bake_id, :title, :content)
    end
end
