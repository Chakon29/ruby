class PublicacionsController < ApplicationController
  before_action :set_publicacion, only: [:edit, :update, :destroy]

  def index
    @publicacions = Publicacion.all
  end

  def new
    @publicacion = Publicacion.new
  end

  def edit
  end

  def create
    @publicacion = Publicacion.new(publicacion_params)
  
    if @publicacion.save
      redirect_to publicacions_path, notice: 'Publicación creada con éxito.'
    else
      render :new
    end
  end

  def update
    if @publicacion.update(publicacion_params)
      redirect_to publicacions_path, notice: 'Publicación actualizada con éxito.'
    else
      render :edit
    end
  end

  def destroy
    @publicacion.destroy
    redirect_to publicacions_url, notice: 'Publicación eliminada con éxito.'
  end

  private
    def set_publicacion
      @publicacion = Publicacion.find(params[:id])
    end

    def publicacion_params
      params.require(:publicacion).permit(:titulo, :body, :imagen)
    end
end