class GiraffeController < ApplicationController
  def homepage
    
    @matching_boards = Board.all

    @list_of_boards = @matching_boards.order({ :created_at => :desc })

    @zebra = "hi"
    render({ :template => "base/homepage" })
  end
end
