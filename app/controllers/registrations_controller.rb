class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
    @user.build_address
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = "User created!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
      if @user.update(user_params)
        flash[:notice] = "User updated!"
        redirect_to @user
      else
        render 'edit'
      end
    end

  private
  def user_params
    params.require(:user).permit(:email, :name, :username,:phone_no, :role , :email, :password,address_attributes: [:location,:street_address,:city,:state,:zip,:latitude,:longitude,:country])
  end
end