class HouseImagesController < ApplicationController
  before_action :set_house_image, only: [:show, :edit, :update, :destroy]

  # GET /house_images
  # GET /house_images.json
  def index
    @house_images = HouseImage.all
  end

  # GET /house_images/1
  # GET /house_images/1.json
  def show
  end

  # GET /house_images/new
  def new
    @house_image = HouseImage.new
  end

  # GET /house_images/1/edit
  def edit
  end

  # POST /house_images
  # POST /house_images.json
  def create
    @house_image = HouseImage.new(house_image_params)

    respond_to do |format|
      if @house_image.save
        format.html { redirect_to @house_image, notice: 'House image was successfully created.' }
        format.json { render :show, status: :created, location: @house_image }
      else
        format.html { render :new }
        format.json { render json: @house_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_images/1
  # PATCH/PUT /house_images/1.json
  def update
    respond_to do |format|
      if @house_image.update(house_image_params)
        format.html { redirect_to @house_image, notice: 'House image was successfully updated.' }
        format.json { render :show, status: :ok, location: @house_image }
      else
        format.html { render :edit }
        format.json { render json: @house_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_images/1
  # DELETE /house_images/1.json
  def destroy
    @house_image.destroy
    respond_to do |format|
      format.html { redirect_to house_images_url, notice: 'House image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_image
      @house_image = HouseImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_image_params
      params.require(:house_image).permit(:url, :tags, :section, :score)
    end
end
