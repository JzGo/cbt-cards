class CardsController < ApplicationController

  def create
    @card = Card.new(card_params)
    @card.save
    if @card.save
      redirect_to(:back)
    else
      redirect_to(:back)
    end
  end

  private

  def card_params
    params.require(:card).permit(:emotions, :intensity, :thoughts, :reflection, :user_id)
  end

end
