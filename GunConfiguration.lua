return {
	CameraOffset = {
		X = 3,
		Y = 0.5,
		Z = -2,
	},
	Recoil = {
		Amplifier = 0.8, -- Amplifier, intensity of recoil
		Decay = 0.5, -- How fast recoil goes down, translated to percentage (0.02 == 2% decay every frame)
		Improve = 0.6, -- How fast recoil increases when it kicks, translated to percentage (0.6 == 60% improvement every frame)
		
		X = { -- Pitch rotation, Vertical
			Min = 0.3,
			Max = 0.65,
		},
		Y = { -- Yaw rotation, Horizontal
			Min = 0.1,
			Max = 0.5,
		},
		Z = { -- Roll rotation, Sideways
			Min = 0.1,
			Max = 0.5,
		},
	},
	Spread = 1,

	OverrideZOffset = nil, -- deprecated
	OverrideStep = nil,
	CanToggleBetweenOverrides = false,
	
	AimFOVDenominator = 0.8, -- The zoom multiplier when aiming
  AlwaysAim = false, -- whether or not the player will always aim when equipping the weapon
	
	CrosshairStyle = nil, -- For custom crosshair styles, make sure your crosshair preset supports this (Default crosshairs support nil, and Shotguns)

	EnableHandleAttach = false, -- allows the gun to be animated with moveable magazines (custom anims) -- MUST HAVE A PART NAMED BodyAttach THAT IS MOTOR6D-WELDED TO THE GUNS TO BE ANIMATABLE

	HandleAttaches = {

	}, -- binds the parts to its corresponding adornee

	MuzzleFlashStyle = "Laser", -- folders in Shared_Echelon > Storage > MuzzleEffects
	
	ReloadType = "Default", --[[
	
		Default = Reload, boom ur at max ammo
		Recharge = Reload, wait an amount of time that depends on ur ammo, boom ur at max ammo (e.g Plasma blaster recharging)
		Increment = Reload, but by adding a certain increment to the ammo every time
	
	]]
	
	AmmoUsageType = "Default", --[[
	
		Default = like bullets, lose one everytime u shoot
		Time = You can shoot as long as much until the time is over
	
	]]

	EquipTime = 0.4,
	
	EnableShootCharge = false,
	ChargeTime = 0.4,
	
	CanDamage = true, -- if this is set to false, there will be NO bullet impact particles, NO bullet cracks, NO bullet holes, and NO damage that will be dealt
	
	ReloadTime = 1.8,
	
	EnableTacticalReload = true,
	
	LimitedAmmo = false,
	
	MaxAmmo = 30,
	Ammo = 30,
	
	ShootTime = 7, -- only applies if AmmoUsageType is set to "Time"
	
	BulletRange = 300,

  Attachments = {
		Flashlight = true, -- Make sure you have an attachment called "Flashlight" under the Tool's Handle, aswell as a "SpotLight" under the attachment too
		Laser = true, -- Make sure you have an attachment called "LaserOrigin" under the Tool's Handle
	},
	
	IncrementReload = {
		Step = 1, -- unit, so 1 ammo every 0.2 second for example
		Rate = 0.6, -- seconds
		BindSoundTo = {
			StepIncrease = "StepIncreasedSFX", -- it will dig through the tool and will try to find anything with this name, play it if they could find it
		},
		BindAnimationTo = {
			StepIncrease = ""
		}
	},
	
	Damage = 32,
	DamageMultiplier = {
		Head = 2,
		Body = 1.2,
		Arms = 1,
		Legs = 1.2,
	},
	
	Firemode = "Auto", -- Semi, Auto, Burst
	BurstRate = 3, -- only applies if burst
	
	ShotsPerTrigger = 1, -- similar to a shotgun
	
	ProjectileSettings = {
		UseProjectiles = true,

		ProjectileType = {
			Model = "LaserBullet",
			Velocity = {
				Constant = 0,
				Initial = 300,
			},
			Acceleration = Vector3.new(0, -workspace.Gravity/4, 0),
			CacheProjectiles = false,
			CanBounce = false,
			BounceLimit = 3,
			BounceMultiplier = 0.5, -- velocity multiplier every bounce
			RemoveOnHit = true,
			LastTime = 3.05,

			DamagePlayerDirectly = true,

			LinearMovement = false, -- whether projectile aftermath should rely on physics entirely (false) or data provided (true)
		}
	},
	
	BulletCasing = {
		Casing_Model = "nil",
		Velocity =  {
			Initial = 20,
		}
	},
	
	Firerate = 480, --// Firerate/RPM | 60/Firerate
	
	--[[ CUSTOM EVENTS ]]--
	
	ShootEvents = {
		OnShoot = {
			BindToEvents = {
				
			},
		},
		OnHitScan = {
			BindToEvents = {

			},
		},
		OnHitDamage = {
			BindToEvents = {

			},
		},
	},
	
	ProjectileEvents = {
		ProjectileCast = {
			BindToEvents = {
				
				
			}
		},
		OnProjectileRemove = {
			BindToEvents = {
			}
		},
		OnProjectileTouch = {
			BindToEvents = {
			}
		},
		OnProjectileUpdate = {
			BindToEvents = {
			}
		},
		OnProjectileVelocityApply = {
			BindToEvents = {
			}
		},
	},
	
	AfterShoot = {
		BoltPullSoundEnabled = false, -- bolt pull sound, it can also work as a shotgun pump sfx if u change the sound id of it | WORKS ONLY ON SEMI
		BoltPullSound = "BoltPullSFX",
		BoltPullWait = 0.2, -- how long to wait before playing the sound
	},

	AfterReload = {
		PlaySounds = {
			[1] = {
				WaitTime = 0.2, -- how long too wait after reload
				Sound = "BoltPullSFX"
			}
		},
		PlayAnimations = {
			[1] = {
				WaitTime = 0.2, -- how long too wait after reload
				Animation = ""
			}
		}
	},
	
	
	--// SCROLL DOWN TO SEE ALTERNATIVE FIRE SETTINGS
	--// SCROLL DOWN TO SEE ALTERNATIVE FIRE SETTINGS
	
	

	AlternativeFireSettings = { -- Semi, Burst only (No Auto)
		TriggerBind = Enum.KeyCode.G,
		
		EnableShootCharge = true,
		ChargeTime = 1,

		Firemode = "Semi", -- Semi, Burst
		BurstRate = 3, -- only applies if burst

		ShotsPerTrigger = 1, -- similar to a shotgun

		Damage = 92,
		DamageMultiplier = {
			Head = 2,
			Body = 1.2,
			Arms = 1,
			Legs = 1.2,
		},

		ProjectileSettings = {
			UseProjectiles = true,

			ProjectileType = {
				Model = "LaserBullet",
				Velocity = {
					Constant = 0,
					Initial = 300,
				},
				Acceleration = Vector3.new(0, 0, 0),
				CacheProjectiles = true,
				CanBounce = false,
				BounceLimit = 3,
				BounceMultiplier = 1.2, -- velocity multiplier every bounce
				RemoveOnHit = false,
				LastTime = 5,

				DamagePlayerDirectly = true,

				LinearMovement = false, -- whether projectile aftermath should rely on physics entirely (false) or data provided (true)
			}
		},

		BulletCasing = {
			Casing_Model = "nil",
			Velocity =  {
				Initial = 20,
			}
		},

		Firerate = 600, --// Firerate/RPM | 60/Firerate
		ShootCooldown = 4, -- seconds
		
		ShootEvents = {
			OnShoot = {
				BindToEvents = {

				},
			},
			OnHitScan = {
				BindToEvents = {

				},
			},
			OnHitDamage = {
				BindToEvents = {

				},
			},
		},
		
		ProjectileEvents = {
			ProjectileCast = {
				BindToEvents = {


				}
			},
			OnProjectileRemove = {
				BindToEvents = {
				}
			},
			OnProjectileTouch = {
				BindToEvents = {
				}
			},
			OnProjectileUpdate = {
				BindToEvents = {
				}
			},
			OnProjectileVelocityApply = {
				BindToEvents = {
				}
			},
		},
	},
}
