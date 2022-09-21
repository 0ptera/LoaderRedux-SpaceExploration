for i, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["se-deep-space-transport-belt"].researched then
    force.recipes["deep-space-loader-black"].enabled = true
    force.recipes["deep-space-loader-blue"].enabled = true
    force.recipes["deep-space-loader-cyan"].enabled = true
    force.recipes["deep-space-loader-green"].enabled = true
    force.recipes["deep-space-loader-magenta"].enabled = true
    force.recipes["deep-space-loader-red"].enabled = true
    force.recipes["deep-space-loader-white"].enabled = true
    force.recipes["deep-space-loader-yellow"].enabled = true
  else
    force.recipes["deep-space-loader-black"].enabled = false
    force.recipes["deep-space-loader-blue"].enabled = false
    force.recipes["deep-space-loader-cyan"].enabled = false
    force.recipes["deep-space-loader-green"].enabled = false
    force.recipes["deep-space-loader-magenta"].enabled = false
    force.recipes["deep-space-loader-red"].enabled = false
    force.recipes["deep-space-loader-white"].enabled = false
    force.recipes["deep-space-loader-yellow"].enabled = false
  end
end
