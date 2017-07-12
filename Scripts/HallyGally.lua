function onload()
  local button = {}
  button.width = 1500
  button.height = 1500
  button.position = {0, 0.25, 0}
  button.rotation = {0, 0, 0}
  button.click_function = "buttonClicked"
  button.font_size = 200
  button.function_owner = self
  self.createButton(button)
end

color = ''

function buttonClicked(clickedObject, player_color)
  -- printToAll('('..player_color..')' .. Player[player_color].steam_name .. ' clicked the button',stringColorToRGB(player_color))
  if(Timer.destroy('turnTimer') == false )
  then
    color = player_color
  end

  newTimer()
end

function endTurn()
  --printToAll('-- End of turn -- ',{1,1,1})
  printToAll(Player[color].steam_name .. ' clicked the button first!',stringColorToRGB(color))
end

function newTimer()
  local param = {}
  param.identifier = 'turnTimer'
  param.function_name = 'endTurn'
  param.delay = 1
  Timer.create(param)
end
