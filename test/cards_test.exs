defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

test "create_deck makes 52 cards" do
  deck_length = length(Cards.create_deck)
  assert deck_length == 52
end

test "shuffling a deck randomizes it" do
  deck = Cards.create_deck()
  refute deck == Cards.shuffle(deck)
end

test "Deal a hand of two cards" do
  {hand, _rest_deck} = Cards.create_deck() |> Cards.deal(2)
  assert length(hand) == 2

end

end
