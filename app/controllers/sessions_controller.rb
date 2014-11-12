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
      "'Music doesn't lie. If there is something to be changed in this world, then it can only happen through music.' -Jimi Hendrix",
      "'Music is a higher revelation than all wisdom and philosophy.' -Ludwig Von Beethoven",
      "'Music is forever; music should grow and mature with you, following you right on up until you die.' -Paul Simon",
      "'You are the music while the music lasts.' -T.S. Eliot",
      "'I've never missed a gig yet. Music makes people happy, and that's why I go on doing it - I like to see everybody smile.' -Buddy Guy",
      "'Music happens to be an art form that transcends language.' -Herbie Hancock",
      "'I don't care much about music. What I like is sounds.' -Dizzy Gillespie",
      "'In music the passions enjoy themselves.' -Friedrich Nietzsche",
      "'Music is always a commentary on society.' -Frank Zappa",
      "'Most rock journalism is people who can't write, interviewing people who can't talk, for people who can't read.' -Frank Zappa"
      ].sample
  end

end
