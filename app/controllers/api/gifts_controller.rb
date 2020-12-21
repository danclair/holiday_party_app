class Api::GiftsController < ApplicationController
  def index
    @gifts = Gift.all
    render "index.json.jb"
  end

  def create
    @gift = Gift.new(
      to: params[:to],
      from: params[:from],
      color: params[:color],
      weight: params[:weight],
    )
    @gift.save
    render "show.json.jb"
  end

  def show
    @gift = Gift.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @gift = Gift.find_by(id: params[:id])
    @gift.to = params[:to] || @gift.to
    @gift.from = params[:from] || @gift.from
    @gift.color = params[:color] || @gift.color
    @gift.weight = params[:weight] || @gift.weight
    @gift.save
    render "show.json.jb"
  end

  def destroy
    gift = Gift.find_by(id: params[:id])
    gift.destroy
    render json: { message: "Gift successfully destroyed" }
  end
end
