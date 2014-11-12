class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to(user_path(user))
    else
      flash[:error] = "Incorrect username or password."
      redirect_to(login_path)
    end
  end

  def destroy
    log_out!
    redirect_to root_path
  end

  def new
    @quotes = [
      "'it's not about the notes you play, it's about the notes you don't play' -Miles Davis",
      "'Music is a moral law. It gives soul to the universe, wings to the mind, flight to the imagination, and charm and gaiety to life and to everything.' -Plato",
      "'If music be the food of love, play on.' -Bill Shakespeare",
      "'Music doesn't lie. If there is something to be changed in this world, then it can only happen through music.
Read more at.' -Jimi Hendrix",
      "'Music is a higher revelation than all wisdom and philosophy.
Read more at.' -Ludwig Von Beethoven",
      "'Music is forever; music should grow and mature with you, following you right on up until you die.' -Paul Simon",
      
      ].sample
  end

end
