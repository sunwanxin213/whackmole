@MoleGame = @MoleGame || {}


@MoleGame.Preload = ->
@MoleGame.Preload::={
  preload:->
    @preloadBg = @add.sprite @world.centerX,@world.centerY,'preloadBg'
    @preloadBg.anchor.set .5
    @preloadProgress = @add.sprite @world.centerX,@world.centerY,'preloadProgress'
    @preloadProgress.anchor.set .5


    @percentText = @add.bitmapText @world.centerX-45,@world.centerY-80,'coFont','',24




    @load.setPreloadSprite @preloadProgress
    @load.crossOrigin = true
    @load.onFileComplete.add @showPercent,@
    @load.pack 'mainMenu','assets/assets.json'
    @load.pack 'game','assets/assets.json'


  showPercent:(progress)->
    @percentText.setText "#{progress}%"
}