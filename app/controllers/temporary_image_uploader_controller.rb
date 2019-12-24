class TemporaryImageUploaderController < ApplicationController
  def index
    @temporary_images = TemporaryImage.all
  end

  def new
    @temporary_image = TemporaryImage.new
  end

  def create
    @temporary_image = TemporaryImage.new(temporary_image_params)
    if @temporary_image.save
      redirect_to root_path, notice: "保存しました"
    else
      redirect_to root_path, notice: "保存に失敗しました"
    end
  end

  def temporary_image_params
    params.require(:temporary_image).permit(:image)
  end
end
