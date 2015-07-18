class RobotListsController < ApplicationController
  before_action :set_robot_list, only: [:show, :edit, :update, :destroy]

  # GET /robot_lists
  # GET /robot_lists.json
  def index
    @robot_lists = RobotList.all
  end

  # GET /robot_lists/1
  # GET /robot_lists/1.json
  def show
  end

  # GET /robot_lists/new
  def new
    @robot_list = RobotList.new
  end

  # GET /robot_lists/1/edit
  def edit
  end

  # POST /robot_lists
  # POST /robot_lists.json
  def create
    @robot_list = RobotList.new(robot_list_params)

    respond_to do |format|
      if @robot_list.save
        format.html { redirect_to @robot_list, notice: 'Robot was successfully created.' }
        format.json { render :show, status: :created, location: @robot_list }
      else
        format.html { render :new }
        format.json { render json: @robot_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /robot_lists/1
  # PATCH/PUT /robot_lists/1.json
  def update
    respond_to do |format|
      if @robot_list.update(robot_list_params)
        format.html { redirect_to @robot_list, notice: 'Robot was successfully updated.' }
        format.json { render :show, status: :ok, location: @robot_list }
      else
        format.html { render :edit }
        format.json { render json: @robot_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /robot_lists/1
  # DELETE /robot_lists/1.json
  def destroy
    @robot_list.destroy
    respond_to do |format|
      format.html { redirect_to robot_lists_url, notice: 'Robot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_robot_list
      @robot_list = RobotList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def robot_list_params
      params.require(:robot_list).permit(:name, :description, :arms, :material, :fuel, :voice_box, :notes)
    end
end
