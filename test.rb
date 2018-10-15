# class PokerHand 
#     def initialize(hand)
#       @hand = hand
#     end
        
#     def compare_with(other)
#       other_max_card = other.max_hand
#       other = other.display_hand
#       other_hand_result = what_hand(other)
#       hand_result = what_hand(@hand)
#       if @order_of_hands.index(other_hand_result) < @order_of_hands.index(hand_result)
#         "Loss"
#       elsif @order_of_hands.index(other_hand_result) > @order_of_hands.index(hand_result)
#         "Win"
#       elsif @order_of_hands.index(other_hand_result) == @order_of_hands.index(hand_result) && @max > other_max_card
#         "Win"
#       elsif @order_of_hands.index(other_hand_result) == @order_of_hands.index(hand_result) && @max < other_max_card
#         "Loss"
#       else
#         "Tie"
#       end
#     end

#     def display_hand
#         @hand
#     end
    
#     def what_hand(hand)
#       @order_of_cards = %W(A 2 3 4 5 6 7 8 9 T J Q K A)
#       @order_of_hands = %W(RF SF FK FH FL ST 3K TP OP)
#       @cards = hand.split(' ')
#       @card_value = @cards.collect {|card| card[0]}
#       @card_suit = @cards.collect {|suit| suit[-1]}
#       if royal_flush
#         @order_of_hands[0]
#       elsif straight_flush
#         @order_of_hands[1] && max_card
#       elsif four_of_a_kind
#         @order_of_hands[2]
#       elsif full_house
#         @order_of_hands[3]
#       elsif flush
#         @order_of_hands[4]
#       elsif straight
#         @order_of_hands[5]
#       elsif three_of_a_kind
#         @order_of_hands[6]
#       elsif two_pair
#         @order_of_hands[7]
#       elsif one_pair
#         @order_of_hands[8]
#       else
#         #high  card
#       end
#     end

#     def royal_flush
#         #If card values has the same as the top 5 order and the suits are the same, must be RF
#         (@card_value - @order_of_cards[-5..-1]).empty? && @card_suit.count(@cards[0][-1]) == 5 
#     end

#     def straight_flush
#         #Use straight and flush functions to get result
#         straight && flush 
#     end

#     def four_of_a_kind
#         #If either the first or second value has a count of 4, then its 4 of a kind
#         @card_value.count(@card_value[0]) == 4 || @card_value.count(@card_value[1]) == 4
#     end
    
#     def full_house
#         #Has to be 3-2, as 4-1 would have been picked up by four-of-a-kind
#         @card_value.uniq.length == 2
#     end

#     def flush
#         #If theres only one value for suit, must all be the same suit
#         @card_suit.uniq.length == 1
#     end

#     def straight 
#         #If length of array is 5, means there are 5 dif values, if max - min is 4, must be straight
#         straight = @card_value.collect {|number| @order_of_cards.index(number)}.sort
#         straight.uniq.length == 5 && straight[-1] - straight[0] == 4
#     end

#     def three_of_a_kind
#         #If either of the three has a count of 3, must be 3 of a kind
#         @card_value.count(@card_value[0]) == 3 || @card_value.count(@card_value[1]) == 3 || @card_value.count(@card_value[2]) == 3
#     end

#     def two_pair
#         #Has to be 2-2-1, as if it was 3-1-1, it would have been picked up by three-of-a-kind
#         @card_value.uniq.length == 3
#     end

#     def one_pair
#         #Has to be 2-1-1-1
#         @card_value.uniq.length == 4 ? @card_value.detect{ |pair| @card_value.count(pair) > 1 } : false
#     end

#     def max_card
#         order_of_cards = %W(2 3 4 5 6 7 8 9 T J Q K A)
#         max = @hand.split(' ').collect {|card| card[0]}
#         max.collect {|number| order_of_cards.index(number)}.max
#     end

#     def max_pair
#     end
# end

# player = PokerHand.new("AS AH 2H AD AC")
# opponent = PokerHand.new("JS JD JC JH 3D")
# puts player.compare_with(opponent)

# @card_value = [1,2,3,3]
# puts @card_value.detect{ |pair| @card_value.count(pair) > 1 }


