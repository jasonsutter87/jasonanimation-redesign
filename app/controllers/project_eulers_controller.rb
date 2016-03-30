class ProjectEulersController < ApplicationController
  before_action :set_project_euler, only: [:show, :edit, :update, :destroy]

  # GET /project_eulers
  # GET /project_eulers.json
  def index
    @project_eulers = ProjectEuler.all
  end

  # GET /project_eulers/1
  # GET /project_eulers/1.json
  def show
  end

  # GET /project_eulers/new
  def new
    @project_euler = ProjectEuler.new
  end

  # GET /project_eulers/1/edit
  def edit
  end

  # POST /project_eulers
  # POST /project_eulers.json
  def create
    @project_euler = ProjectEuler.new(project_euler_params)

    respond_to do |format|
      if @project_euler.save
        format.html { redirect_to @project_euler, notice: 'Project euler was successfully created.' }
        format.json { render :show, status: :created, location: @project_euler }
      else
        format.html { render :new }
        format.json { render json: @project_euler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_eulers/1
  # PATCH/PUT /project_eulers/1.json
  def update
    respond_to do |format|
      if @project_euler.update(project_euler_params)
        format.html { redirect_to @project_euler, notice: 'Project euler was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_euler }
      else
        format.html { render :edit }
        format.json { render json: @project_euler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_eulers/1
  # DELETE /project_eulers/1.json
  def destroy
    @project_euler.destroy
    respond_to do |format|
      format.html { redirect_to project_eulers_url, notice: 'Project euler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_euler
      @project_euler = ProjectEuler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_euler_params
      params.require(:project_euler).permit(:date, :title, :post)
    end
end
