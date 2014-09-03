@MoleGame = @MoleGame || {}


@MoleGame.Boot = ->
@MoleGame.Boot::={
  preload:->
    @load.pack 'preload','assets/assets.json'
  create:->
    @stage.backgroundColor = '#000'
    @stage.forcePortrait = false

    @scale.scaleMode = Phaser.ScaleManager.SHOW_ALL
    @scale.minWidth = 240
    @scale.minHeigh = 170
    @scale.maxWidth = 2880
    @scale.maxHeight = 1920
    @scale.pageAlignHorizontally = true
    @scale.pageAlignVertically = true
    @scale.setScreenSize true

    @input.maxPointers = 1
    @input.addPointer()

    @state.start 'Preload'
}