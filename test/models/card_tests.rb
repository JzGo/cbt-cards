require 'test_helper'

class CardTest < ActiveSupport::TestCase

  test "Card is not saved without emotion entry" do
    card1 = Card.new(thought: "here", reflect: "there", intensity: 3)
    assert_not card1.save
  end

  test "Card is not saved without thought entry" do
    card2 = Card.new(emotion: "happy", reflect: "there", intensity: 3)
    assert_not card2.save
  end

  test "Card is not saved without reflect entry" do
    card3 = Card.new(emotion: "happy", thought: "here", intensity: 3)
    assert_not card3.save
  end

  test "Card is not saved without intensity entry" do
    card4 = Card.new(emotion: "happy", thought: "here", reflect: "there")
    assert_not card4.save
  end
end
