class UsersController < ApplicationController
  before_action :load_user, except: [:new, :create]
  before_action :load_session


  # GET /users
  # GET /users.json
  def index
    @users = User.where("id != #{current_user.id}")
    
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        log_in(@user)
        format.html { redirect_to user_questions_path(@user), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render(:edit)
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    log_out!
    redirect_to(root_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :is_band,
      :is_musician,
      :instrument,
      :style,
      :years_playing,
      :tour_history,
      :location,
      :about_you,
      :is_smoker,
      :favorite_venue,
      :favorite_band,
      :picture,
      :video,
      :password,
      :password_confirmation
    )
  end

  def load_user
    @user = User.find_by(id: params[:id])
  end

  def load_session
    @session = session[:user_id]
  end


end #ends class
