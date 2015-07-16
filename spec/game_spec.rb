require "spec_helper"

module TTT
  describe Game do
    let (:bob) { Player.new({mark: "X", name: "bob"}) }
    let (:frank) { Player.new({mark: "O", name: "frank"}) }

    context "#initialize" do
      before do
        allow_any_instance_of(Array).to receive(:shuffle).and_return [frank, bob]
      end

      it "randomly selects a current_player" do
        game = Game.new([bob, frank])
        expect(game.current_player).to eq frank
      end

      it "randomly selects an other player" do
        game = Game.new([bob, frank])
        expect(game.other_player).to eq bob
      end
    end

    context "#switch_players" do
      it "will set @current_player to @other_player" do
        game = Game.new([bob, frank])
        other_player = game.other_player
        game.switch_players
        expect(game.current_player).to eq other_player
      end

      it "will set @other_player to @current_player" do
        game = Game.new([bob, frank])
        current_player = game.current_player
        game.switch_players
        expect(game.other_player).to eq current_player
      end
    end

    context "#get_move" do
      it "converts human_move of '1' to [0, 0]" do
        game = Game.new([bob, frank])
        expect(game.get_move("1")).to eq [0, 0]
      end
      it "converts human_move of '7' to [0, 2]" do
        game = Game.new([bob, frank])
        expect(game.get_move("7")).to eq [0, 2]
      end
    end
  end
end
