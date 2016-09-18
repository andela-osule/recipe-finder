class RecipesController < ApplicationController
    def index
        @search_term = params[:search]
        @recipes = Food2fork.for @search_term
        puts @recipes
    end
end
