class HomeController < ApplicationController
  def index
    user = params.require(:user).permit(:name)

    render :text => "Hi #{user[:name]}"
  end
end
