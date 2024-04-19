class Biblio::ShelvesController < ApplicationController

  def new
  end

  def create

  end

  def index
    @books = Biblio::Shelf.all
  end
end
