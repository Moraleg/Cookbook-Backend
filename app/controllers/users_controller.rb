class UsersController < ApplicationController
  #user can show edit and destroy own data
  before_action :set_user, only: [:show, :update, :destroy]
  #if they are logged in and token is authenticated they can do all the above but for login or create since they have already done that
  before_action :authenticate_token, except: [:login, :create]
  before_action :authorize_user, except: [:login, :create, :index]

  #user login with authenitcation and json web tokens
  def login
    #byebug
    user = User.find_by(username: params[:user][:username])
    #if the user and the authentication match
    if user && user.authenticate(params[:user][:password])
      #give the user a token
      #byebug
      token = create_token(user.id, user.username)
      #let them be logged in and all ok
      render json: {status: 200, token: token, user: user}
    else #otherwise they will be told they can't move and need to try again
      render json: {status: 401, message: "unauthorized, please log in or create an account"}
    end
  end

# probably wont want a user index
  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    #byebug
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private #===================================================================

    # token creation
    def create_token(id, username)
      JWT.encode(payload(id, username), ENV["JWT_SECRET"], "HS256")
    end

    #sets up the header payload and signature validations
    def payload(id, username)
      {
        exp: (Time.now + 30.minutes).to_i,
        iat: Time.now.to_i,
        iss: ENV["JWT_ISSUER"],
        user: {
          id: id,
          username: username
        }
      }
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :password_digest)
    end


end
