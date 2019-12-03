class JokesController < ApplicationController

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(joke_params)
    if @joke.save
      flash[:success] = "The was so funny I saved it for you."
      redirect_to joke_path(@joke)
    else
      render 'new'
    end
  end


  def edit
  end


private

  def joke_params


  end


end
