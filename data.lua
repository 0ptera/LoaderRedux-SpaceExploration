--[[ Copyright (c) 2022 Optera
 * Part of Loader Redux for Space Exploration
 *
 * See LICENSE in the project directory for license information.
--]]

local loader_redux = require("__LoaderRedux__.make_loader")

local loader_parameters = {
  ["space-loader"] = {
    tint = util.color("ffffff"),
    subgroup = "belt",
    order = "d-d",
    belt = "se-space-transport-belt",
    upgrade = "deep-space-loader-black",
  },
  ["deep-space-loader-black"] = {
    tint = util.color("000000"),
    subgroup = "belt",
    order = "d-e",
    belt = "se-deep-space-transport-belt-black",
  },
  ["deep-space-loader-blue"] = {
    tint = util.color("0000ff"),
    subgroup = "belt",
    order = "d-f",
    belt = "se-deep-space-transport-belt-blue",
  },
  ["deep-space-loader-cyan"] = {
    tint = util.color("00ffff"),
    subgroup = "belt",
    order = "d-g",
    belt = "se-deep-space-transport-belt-cyan",
  },
  ["deep-space-loader-green"] = {
    tint = util.color("00ff00"),
    subgroup = "belt",
    order = "d-h",
    belt = "se-deep-space-transport-belt-green",
  },
  ["deep-space-loader-magenta"] = {
    tint = util.color("f653a6"),
    subgroup = "belt",
    order = "d-i",
    belt = "se-deep-space-transport-belt-magenta",
  },
  ["deep-space-loader-red"] = {
    tint = util.color("ff0000"),
    subgroup = "belt",
    order = "d-j",
    belt = "se-deep-space-transport-belt-red",
  },
  ["deep-space-loader-white"] = {
    tint = util.color("dddddd"),
    subgroup = "belt",
    order = "d-k",
    belt = "se-deep-space-transport-belt-white",
  },
  ["deep-space-loader-yellow"] = {
    tint = util.color("ffff00"),
    subgroup = "belt",
    order = "d-l",
    belt = "se-deep-space-transport-belt-yellow",
  },
}

-- Create Loaders
local belt_prototypes = data.raw["transport-belt"]

for loader, v in pairs(loader_parameters) do
  local item = loader_redux.make_loader_item(loader, v.subgroup, v.order, v.tint)
  local entity = loader_redux.make_loader_entity(loader, belt_prototypes[v.belt], v.tint, v.upgrade)
  entity.se_allow_in_space = true -- flag for SE 0.6.86 space buildings
  data:extend({item, entity})
end

-- Create recipes
data:extend({
  {
    type = "recipe",
    name = "space-loader",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
      {"advanced-circuit", 10},
      {"steel-plate", 10},
      {"express-loader", 1},
      {"se-space-transport-belt", 2},
      {type="fluid", name="lubricant", amount=40},
    },
    result = "space-loader"
  },
  {
    type = "recipe",
    name = "deep-space-loader-black",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
      { name = "space-loader", amount = 1 },
      { name = "se-deep-space-transport-belt-black", amount = 2 },
      { name = "se-naquium-cube", amount = 1 },
      { name = "se-quantum-processor", amount = 1 },
      { name = "se-heavy-assembly", amount = 1 },
      { name = "se-superconductive-cable", amount = 1 },
      { type = "fluid", name = "lubricant", amount = 100 },
    },
    results = { { name ="deep-space-loader-black", amount = 1 } }
  },
  {
    type = "recipe",
    name = "deep-space-loader-blue",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-blue"
  },
  {
    type = "recipe",
    name = "deep-space-loader-cyan",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-cyan"
  },
  {
    type = "recipe",
    name = "deep-space-loader-green",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-green"
  },
  {
    type = "recipe",
    name = "deep-space-loader-magenta",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-magenta"
  },
  {
    type = "recipe",
    name = "deep-space-loader-red",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-red"
  },
  {
    type = "recipe",
    name = "deep-space-loader-white",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-white"
  },
  {
    type = "recipe",
    name = "deep-space-loader-yellow",
    category = "space-manufacturing",
    enabled = false,
    hidden = false,
    energy_required = 5,
    ingredients = {
    { name = "deep-space-loader-black", amount = 1 },
    { name = "small-lamp", amount = 1 },
    },
    result = "deep-space-loader-yellow"
  },
})

-- Adjust base recipes
data.raw.recipe["loader"].ingredients = {
  {"motor", 10},
  {"electronic-circuit", 5},
  {"iron-plate", 10},
  {"transport-belt", 2},
}

-- Add loader to existing techs
local loader_techs = {
  ["space-loader"] = "se-space-belt",
  ["deep-space-loader-black"] = "se-deep-space-transport-belt",
  ["deep-space-loader-blue"] = "se-deep-space-transport-belt",
  ["deep-space-loader-cyan"] = "se-deep-space-transport-belt",
  ["deep-space-loader-green"] = "se-deep-space-transport-belt",
  ["deep-space-loader-magenta"] = "se-deep-space-transport-belt",
  ["deep-space-loader-red"] = "se-deep-space-transport-belt",
  ["deep-space-loader-white"] = "se-deep-space-transport-belt",
  ["deep-space-loader-yellow"] = "se-deep-space-transport-belt",
}

for recipe, tech in pairs(loader_techs) do
  if data.raw.technology[tech] then
    table.insert(data.raw.technology[tech].effects, {type = "unlock-recipe", recipe = recipe} )
  end
end
