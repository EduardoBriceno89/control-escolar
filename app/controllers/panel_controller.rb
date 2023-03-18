class PanelController < ApplicationController
  before_action :authenticate_user!, :verify_is_estudiante
  def index; end

  def verify_is_estudiante
    redirect_to admin_root_path unless current_user.has_role?(:estudiante)
  end
end
