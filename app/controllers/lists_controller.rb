class ListsController < ApplicationController
    def index
        @list=List.all
    end
    def new
    end
    def show
        @list=List.find(params[:id])
    end

    
    def create
      @list = List.new(list_params)   
     if(@list.save)
      redirect_to @list
     else
        render 'new'
     end
    end
    def edit
        @list=List.find(params[:id])
    end
    def update
        @list=List.find(params[:id])
        @list.update(list_params)
        redirect_to @list

    end
    def destroy
        @list=List.find(params[:id])
        @list.destroy 
        redirect_to lists_path
    end
   
    private
      def list_params
        params.require(:list).permit(:title, :note, :due, :priority)
      end
end
