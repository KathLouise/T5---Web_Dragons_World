class DragonsController < ApplicationController
  before_action :authorize, except: [:show, :index]
  before_action :set_dragon, only: [:show, :edit, :update, :destroy]

  def authorize
	if current_user.nil?
		redirect_to login_url, alert: "Not authorized! Please log in."
	else
		if @dragon && @dragon.user != current_user
			redirect_to root_path, alert: "Not authorized! Only #{@dragon.user} has access to this post."
		end
	end
  end
  # GET /dragons
  # GET /dragons.json
  def index
    @dragons = Dragon.all
  end

  # GET /dragons/1
  # GET /dragons/1.json
  def show
  end

  # GET /dragons/new
  def new
    @dragon = Dragon.new
  end

  # GET /dragons/1/edit
  def edit
  end

  # POST /dragons
  # POST /dragons.json
  def create
    @dragon = Dragon.new(dragon_params)

    respond_to do |format|
      if @dragon.save
        format.html { redirect_to @dragon, notice: 'Dragon was successfully created.' }
        format.json { render :show, status: :created, location: @dragon }
      else
        format.html { render :new }
        format.json { render json: @dragon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dragons/1
  # PATCH/PUT /dragons/1.json
  def update
    respond_to do |format|
      if @dragon.update(dragon_params)
        format.html { redirect_to @dragon, notice: 'Dragon was successfully updated.' }
        format.json { render :show, status: :ok, location: @dragon }
      else
        format.html { render :edit }
        format.json { render json: @dragon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dragons/1
  # DELETE /dragons/1.json
  def destroy
    @dragon.destroy
    respond_to do |format|
      format.html { redirect_to dragons_url, notice: 'Dragon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dragon
      @dragon = Dragon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dragon_params
      params.require(:dragon).permit(:name, :race, :gender)
    end
end
