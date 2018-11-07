class PetsController < ActionController::Base

    def home

    end
    
    def index
        @pets = Pet.all
    end
    
    def new

    end
    
    def show
       @pet = Pet.find(params[:id]) 
    end
    
    
  def create
    Pet.create(pet_params)
    redirect_to pets_path
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pets_path
  end

  private
  def pet_params
    params.require(:pet).permit(:name)
  end

end
