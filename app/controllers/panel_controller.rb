class PanelController < ApplicationController
  before_action :authenticate_user!, :verify_is_estudiante
  def index
    if params[:modulo_id]
      @modulo = Modulo.find(params[:modulo_id])
      @calificaciones = @modulo.calificaciones
    else
      @calificaciones = Calificacione.all
    end
  end

  def verify_is_estudiante
    redirect_to admin_root_path unless current_user.has_role?(:estudiante)
  end
end
