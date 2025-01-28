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

  def paper 
    moves= ["rock", "paper", "scissors"]
    @computer= moves.sample
    @outcome= ""

    if @computer=="rock"
     @outcome= "We won!"
    elsif @computer=="paper"
     @outcome= "We tied!"
    elsif @computer=="scissors"
     @outcome= "We lost!"
    end

    render({ :template => "page_templates/paper"})

  end

  def scissors
    moves= ["rock", "paper", "scissors"]
    @computer= moves.sample
    @outcome= ""

    if @computer=="rock"
     @outcome= "We lost!"
    elsif @computer=="paper"
     @outcome= "We won!"
    elsif @computer=="scissors"
     @outcome= "We tied!"
    end

    render({ :template => "page_templates/scissors"})
  end

end
