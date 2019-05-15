class SkillsController < ApplicationController

  def show
      @skill = Skill.find(id: params[:id])
      render json: @skill
    end

    def index
      @skills = Skill.all
      render json: @skills
    end

end
