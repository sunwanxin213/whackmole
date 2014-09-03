@MoleGame = @MoleGame || {}


@MoleGame.game = new Phaser.Game 1024,768,Phaser.AUTO,''

@MoleGame.game.state.add 'Boot',@MoleGame.Boot
@MoleGame.game.state.add 'Preload',@MoleGame.Preload
#@MoleGame.game.state.add 'MainMenu',@MoleGame.MainMenu
#@MoleGame.game.state.add 'Game',@MoleGame.Game
@MoleGame.game.state.start 'Boot'