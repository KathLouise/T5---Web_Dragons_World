class StrokesController < ApplicationController
  before_action :authorize, except: [:show, :index]
  before_action :set_stroke, only: [:show, :edit, :update, :destroy]

  def authorize
	if current_user.nil?
      		redirect_to login_url, alert: "Not authorized! Please log in."
    	else
      		if @stroke && @stroke.user != current_user
        		redirect_to root_path, alert: "Not authorized! Only #{@stroke.user} has access to this post."
      		end
    	end
  end

  # GET /strokes
  # GET /strokes.json
  def index
    @strokes = Stroke.all
  end

  # GET /strokes/1
  # GET /strokes/1.json
  def show
  end

  # GET /strokes/new
  def new
    @stroke = Stroke.new
  end

  # GET /strokes/1/edit
  def edit
  end

  # POST /strokes
  # POST /strokes.json
  def create
    @stroke = Stroke.new(stroke_params)

    respond_to do |format|
      if @stroke.save
        format.html { redirect_to @stroke, notice: 'Stroke was successfully created.' }
        format.json { render :show, status: :created, location: @stroke }
      else
        format.html { render :new }
        format.json { render json: @stroke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strokes/1
  # PATCH/PUT /strokes/1.json
  def update
    respond_to do |format|
      if @stroke.update(stroke_params)
        format.html { redirect_to @stroke, notice: 'Stroke was successfully updated.' }
        format.json { render :show, status: :ok, location: @stroke }
      else
        format.html { render :edit }
        format.json { render json: @stroke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strokes/1
  # DELETE /strokes/1.json
  def destroy
    @stroke.destroy
    respond_to do |format|
      format.html { redirect_to strokes_url, notice: 'Stroke was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stroke
      @stroke = Stroke.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stroke_params
      params.require(:stroke).permit(:user_id, :dragon_id, :name, :kind)
    end
end
