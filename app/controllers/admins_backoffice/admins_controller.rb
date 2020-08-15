class AdminsBackoffice::AdminsController < AdminsBackofficeController
  before_action :set_admins, only: [:show, :edit, :update, :destroy]

  # Visualizar Admin
  def index
    @admins = Admin.all
  end

  # Visualizar Admin
  def show
  end

  # Novo Admin
  def new
    @admin = Admin.new
  end

  # Editar Admin
  def edit
  end

  # Criar Admin
  def create
    @admin = Admin.new(admin_params)
    @admin.save
  end

  # Atualizar Admin
  def update
    @admin.update(admin_params)
  end

  # Excluir Admin
  def destroy
    @admin.destroy
  end


  private

  # Use callbacks to share common setup or constraints between actions.
  def set_admins
    @admin = Admin.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def admin_params
    params.require(:admin).permit(:email)
  end

end
