# frozen_string_literal: true

class MadoffsController < ApplicationController
  before_action :set_madoff, only: :upvote

  def index
    @madoffs = Madoff.order(con_amount: :desc).limit(1000)
  end

  def new
    @madoff = Madoff.new
  end

  def create
    @madoff = Madoff.new(madoff_params)

    respond_to do |format|
      if @madoff.save
        format.html { redirect_to action: :index }
        format.json { render :index, status: :created, location: @madoff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @madoff.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    @madoff.upvotes += 1

    respond_to do |format|
      if @madoff.save
        format.html { redirect_to action: :index }
        format.json { render :index, status: :updated, location: @madoff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @madoff.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def madoff_params
    params.require(:madoff).permit(:name, :age, :company_name, :con, :wiki_link, :upvotes, :current_status)
  end

  def set_madoff
    @madoff = Madoff.find(params[:id])
  end
end
