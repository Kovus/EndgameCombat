data:extend(
{
  {
    type = "ammo",
    name = "sulfur-bullet-magazine",
    icon = "__EndgameCombat__/graphics/icons/sulfur-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 5 , type = "physical"}
            },
			{
              type = "damage",
              damage = { amount = 5 , type = "fire"}
            }
          }
        }
      }
    },
    magazine_size = 10,
	subgroup = "ammo",
    order = "a",
    stack_size = 100
  },
    {
    type = "ammo",
    name = "sulfur-heavy-bullet-magazine",
    icon = "__EndgameCombat__/graphics/icons/sulfur-heavy-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 40 , type = "physical"}
            },
			{
              type = "damage",
              damage = { amount = 20 , type = "impact"}
            },
			{
              type = "damage",
              damage = { amount = 10 , type = "fire"}
            }
          }
        }
      }
    },
    magazine_size = 10,
	subgroup = "ammo",
    order = "a",
    stack_size = 100
  },
  
    {
    type = "ammo",
    name = "hiex-cannon-shell-big",
    icon = "__EndgameCombat__/graphics/icons/cannon-shell-hiex.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "hiex-cannon-projectile-big",
          starting_speed = 1,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 70
        }
      },
    },
    subgroup = "ammo",
    order = "d[rocket-launcher]-a[basic]",
    stack_size = 100
  },
    {
    type = "ammo",
    name = "nuke-shell",
    icon = "__EndgameCombat__/graphics/icons/nuke-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "nuke-projectile",
          starting_speed = 0.25,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 200
        }
      },
    },
    subgroup = "ammo",
    order = "c",
    stack_size = 100
  },
      {
    type = "ammo",
    name = "neutron-shell",
    icon = "__EndgameCombat__/graphics/icons/neutron-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "neutron-projectile",
          starting_speed = 0.25,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 200
        }
      },
    },
    subgroup = "ammo",
    order = "c",
    stack_size = 100
  },
  
    {
    type = "capsule",
    name = "radiation-capsule",
    icon = "__EndgameCombat__/graphics/icons/radiation-capsule.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 20,
        projectile_creation_distance = 0.6,
        range = 40,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "radiation-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "b[radiation-capsule]",
    stack_size = 100
   },
}
)
