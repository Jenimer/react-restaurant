class Api::MenusController < Api::ApiController
  before_action :set_menu, only: [:destroy, :update, :show]
  def index
    render json: @menu
  end

  def show
    render json: @menu
  end

  def create
    menu = @menu.new(menu_params)
    if menu.save
      render json: menu
    else
      render_error(menu)
    end
  end

  def update
    if @menu.update(menu_params)
      render json: menu
    else
      render_error(menu)
    end
  end

  def destroy
    @menu.destroy
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:item, :description, :price)
    end
end
