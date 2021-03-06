class PeopleController < ApplicationController
  load_and_authorize_resource :entity, parent: false, find_by: :slug

  before_action :set_person, only: [:show]

  # GET /people
  # GET /people.json
  def index
    @people = Entity.published.people
  end

  # GET /people/1
  # GET /people/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Entity.published.people.find_by_slug(params[:id])
    end
end
