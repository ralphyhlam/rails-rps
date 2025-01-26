class PagesController < ApplicationController
  def index
    render({ :template => "page_templates/index"})
  end

  def rock
    moves= ["rock", "paper", "scissors"]
    @computer= moves.sample
    @outcome= ""
    
    if @computer=="rock"
      @outcome= "We tied!"
    elsif @computer=="paper"
      @outcome= "We lost!"
    elsif @computer=="scissors"
      @outcome= "We won!"
    end

    render({ :template => "page_templates/rock"})
  end

end
