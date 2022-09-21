--[[ Copyright (c) 2022 Optera
 * Part of Loader Redux for Space Exploration
 *
 * See LICENSE in the project directory for license information.
--]]

-- Call Loader Redux API to register the loaders
script.on_init(function()
  remote.call("loader-redux", "add_loader", "space-loader")
  remote.call("loader-redux", "add_loader", "deep-space-loader-black")
  remote.call("loader-redux", "add_loader", "deep-space-loader-blue")
  remote.call("loader-redux", "add_loader", "deep-space-loader-cyan")
  remote.call("loader-redux", "add_loader", "deep-space-loader-green")
  remote.call("loader-redux", "add_loader", "deep-space-loader-magenta")
  remote.call("loader-redux", "add_loader", "deep-space-loader-red")
  remote.call("loader-redux", "add_loader", "deep-space-loader-white")
  remote.call("loader-redux", "add_loader", "deep-space-loader-yellow")
end)

script.on_configuration_changed(function()
  remote.call("loader-redux", "add_loader", "space-loader")
  remote.call("loader-redux", "add_loader", "deep-space-loader-black")
  remote.call("loader-redux", "add_loader", "deep-space-loader-blue")
  remote.call("loader-redux", "add_loader", "deep-space-loader-cyan")
  remote.call("loader-redux", "add_loader", "deep-space-loader-green")
  remote.call("loader-redux", "add_loader", "deep-space-loader-magenta")
  remote.call("loader-redux", "add_loader", "deep-space-loader-red")
  remote.call("loader-redux", "add_loader", "deep-space-loader-white")
  remote.call("loader-redux", "add_loader", "deep-space-loader-yellow")
end)
