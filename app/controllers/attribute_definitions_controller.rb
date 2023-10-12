class AttributeDefinitionsController < ApplicationController
  before_action :set_attribute_definition, only: %i[ show edit update destroy ]

  # GET /attribute_definitions or /attribute_definitions.json
  def index
    @attribute_definitions = AttributeDefinition.all
  end

  # GET /attribute_definitions/new
  def new
    @attribute_definition = AttributeDefinition.new
  end

  # GET /attribute_definitions/1/edit
  def edit
  end

  # POST /attribute_definitions or /attribute_definitions.json
  def create
    @attribute_definition = AttributeDefinition.new(attribute_definition_params)

    respond_to do |format|
      if @attribute_definition.save
        format.html { redirect_to attribute_definitions_path, notice: "Attribute definition was successfully created." }
        format.json { render :show, status: :created, location: @attribute_definition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attribute_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_definitions/1 or /attribute_definitions/1.json
  def update
    respond_to do |format|
      if @attribute_definition.update(attribute_definition_params)
        format.html { redirect_to attribute_definitions_path, notice: "Attribute definition was successfully updated." }
        format.json { render :show, status: :ok, location: @attribute_definition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attribute_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_definitions/1 or /attribute_definitions/1.json
  def destroy
    @attribute_definition.destroy

    respond_to do |format|
      format.html { redirect_to attribute_definitions_url, notice: "Attribute definition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_definition
      @attribute_definition = AttributeDefinition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attribute_definition_params
      params.require(:attribute_definition).permit(:name)
    end
end
