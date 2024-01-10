class Biblio::ShelvesController < ApplicationController

  def index
    @books = Biblio::Shelf.all
  end
end
