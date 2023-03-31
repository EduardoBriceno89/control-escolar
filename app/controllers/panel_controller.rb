# frozen_string_literal: true

class PanelController < ApplicationController
  before_action :authenticate_user!, :verify_is_estudiante
  def index
    @calificaciones = params[:modulo_id] ? current_user.calificaciones.joins(:modulo).where(modulos: { id: params[:modulo_id] }) : current_user.calificaciones
    
    @promedio = @calificaciones.present? ? format('%.2f', @calificaciones.sum(:promedio) / @calificaciones.count.to_f) : 'No disponible'
  end

  def verify_is_estudiante
    redirect_to admin_root_path unless current_user.has_role?(:estudiante)
  end
end
