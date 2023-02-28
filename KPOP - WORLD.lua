if game.PlaceId == 6894917553 then
    local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

    local Window =
        Rayfield:CreateWindow(
        {
            Name = "Impulse Cheats - 1MOTION KPOP Random Play Dance",
            LoadingTitle = "Rayfield Interface Suite",
            LoadingSubtitle = "UI by Rayfield",
            ConfigurationSaving = {
                Enabled = true,
                FolderName = nil,
                FileName = "Impulse Cheats"
            },
            KeySystem = false,
            KeySettings = {
                Title = "Impulse Cheats",
                Subtitle = "Key System",
                Note = "Temporary key - hPrf5s1",
                FileName = "ImpulseKey",
                SaveKey = true,
                GrabKeyFromSite = false,
                Key = "hPrf5s1"
            }
        }
    )

    Rayfield:Notify(
        {
            Title = "Impulse Cheats",
            Content = "Impulse Cheats loaded! Enjoy :) ඞ",
            Duration = 6.5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Okay!",
                    Callback = function()
                        print("Impulse Loaded!")
                    end
                }
            }
        }
    )

    local Tab = Window:CreateTab("Main", 4483362458)
    local Section = Tab:CreateSection("Main")
    
    local Keybind = Tab:CreateKeybind({
	   Name = "Get Answer",
	   CurrentKeybind = "Q",
	   HoldToInteract = false,
	   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	   Callback = function(Keybind)
	   for _,v in next, (game:GetDescendants()) do
					if v:IsA("Sound") then
						if v.IsPlaying == true and v.SoundId ~= "rbxassetid://9098569710" and v.SoundId ~= "rbxassetid://9517018719" and v.SoundId ~= "rbxassetid://10714176039" and v.SoundId ~= "rbxassetid://9116011515" then
							local numMatch = v.SoundId:match("%d+");
							local Asset = game:GetService("MarketplaceService"):GetProductInfo(numMatch)
							
							
							Rayfield:Notify({
							Title = "Answer",
							Content = "The answer is: "..Asset.Name.."!",
							Duration = 3,
							Image = 4483362458,
							Actions = { -- Notification Buttons
								Ignore = {
									Name = "Okay!",
									Callback = function()
									print("The user tapped Okay!")
								end
							},
							},
							})
							
						end
					end
				end
	   end,
	})

    local Button =
        Tab:CreateButton(
        {
            Name = "Get Answer",
            Callback = function()
            	
            	for _,v in next, (game:GetDescendants()) do
					if v:IsA("Sound") then
						if v.IsPlaying == true and v.SoundId ~= "rbxassetid://9098569710" and v.SoundId ~= "rbxassetid://9517018719" and v.SoundId ~= "rbxassetid://10714176039" and v.SoundId ~= "rbxassetid://9116011515" then
							local numMatch = v.SoundId:match("%d+");
							local Asset = game:GetService("MarketplaceService"):GetProductInfo(numMatch)
							
							
							Rayfield:Notify({
							Title = "Answer",
							Content = "The answer is: "..Asset.Name.."!",
							Duration = 3,
							Image = 4483362458,
							Actions = { -- Notification Buttons
								Ignore = {
									Name = "Okay!",
									Callback = function()
									print("The user tapped Okay!")
								end
							},
							},
							})
							
						end
					end
				end
			end
        }
    )

    local Section = Tab:CreateSection("Removals")

    local Button =
        Tab:CreateButton(
        {
            Name = "Remove Anticheat",
            Callback = function()
                game.Players.LocalPlayer.Character.anticheat:Destroy()
                game.StarterPlayer.StarterCharacterScripts.anticheat:Destroy()
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Remove Barrier",
            Callback = function()
                game.Workspace:FindFirstChild("Block"):Destroy()
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Remove Conveyor",
            Callback = function()
                game.Workspace.Exit:Destroy()
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Remove Guessing Gui",
            Callback = function()
                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.AnswerGui:Destroy()
            end
        }
    )
    
    local Button =
        Tab:CreateButton(
        {
            Name = "Show Guessing Gui",
            Callback = function()
                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.AnswerGui.Visible = true
            end
        }
    )

    local Tab = Window:CreateTab("Local", 4483362458)
    local Section = Tab:CreateSection("Player")

    local Slider =
        Tab:CreateSlider(
        {
            Name = "Speed",
            Range = {16, 100},
            Increment = 1,
            Suffix = "WalkSpeed",
            CurrentValue = 16,
            Flag = "Slider1",
            Callback = function(Value)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
            end
        }
    )

    local Section = Tab:CreateSection("Misc")

    local Button =
        Tab:CreateButton(
        {
            Name = "Unlock Camera",
            Callback = function()
                local speaker = game.Players.LocalPlayer

                game.Workspace.CurrentCamera:remove()
                wait(.1)
                repeat
                    wait()
                until speaker.Character ~= nil
                workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                workspace.CurrentCamera.CameraType = "Custom"
                speaker.CameraMinZoomDistance = 0.5
                speaker.CameraMaxZoomDistance = 400
                speaker.CameraMode = "Classic"
                speaker.Character.Head.Anchored = false
            end
        }
    )

    local Button =
            Tab:CreateButton(
            {
                Name = "Funny Tools",
                Callback = function()
                    local toolremote = game:GetService("ReplicatedStorage").Remotes.SetTool
					local itemlist = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.LightSticksGui.ItemList
                    while wait() do
                    	for i,v in pairs(itemlist:GetDescendants()) do
							toolremote:FireServer(v.Name)
							wait()
						end
						wait()
                    end
                end
            }
        )

    local Button =
        Tab:CreateButton(
        {
            Name = "Among Us Pet ඞ",
            Callback = function()
                local petremote = game:GetService("ReplicatedStorage").Remotes.SetPet

                petremote:FireServer("PetCrewmate")
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Rainbow Trail",
            Callback = function()
                while true do
                    local args = {
                        [1] = "TrailRed"
                    }
                    game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                    wait(0.1)

                    local args = {
                        [1] = "TrailYellow"
                    }
                    game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                    wait(0.1)

                    local args = {
                        [1] = "TrailGreen"
                    }
                    game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                    wait(0.1)

                    local args = {
                        [1] = "TrailBlue"
                    }
                    game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                    wait(0.1)

                    local args = {
                        [1] = "TrailPink"
                    }
                    game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                    wait(0.1)

                    local args = {
                        [1] = "TrailBlack"
                    }
                    game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                    wait(0.1)
                end
            end
        }
    )

    local Tab = Window:CreateTab("Misc", 4483362458)
    local Section = Tab:CreateSection("Main")

    local Button =
        Tab:CreateButton(
        {
            Name = "Destroy Gui",
            Callback = function()
                Rayfield:Destroy()
            end
        }
    )

    local Button =
        Tab:CreateButton(
        {
            Name = "Reset",
            Callback = function()
                local speaker = game.Players.LocalPlayer

                speaker.Character:BreakJoints()
            end
        }
    )

    local Label = Tab:CreateLabel("Right Shift - Open / Close")
    local Label = Tab:CreateLabel("Impulse Cheats - Merzt#0001 | nic?#8912")
else
    if game.PlaceId == 8548412569 then
        local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()

        local Window =
            Rayfield:CreateWindow(
            {
                Name = "Impulse Cheats - 1MOTION World Random Play Dance",
                LoadingTitle = "Rayfield Interface Suite",
                LoadingSubtitle = "UI by Rayfield",
                ConfigurationSaving = {
                    Enabled = true,
                    FolderName = nil,
                    FileName = "Impulse Cheats"
                },
                KeySystem = false,
                KeySettings = {
                    Title = "Impulse Cheats",
                    Subtitle = "Key System",
                    Note = "Temporary key - hPrf5s1",
                    FileName = "ImpulseKey",
                    SaveKey = true,
                    GrabKeyFromSite = false,
                    Key = "hPrf5s1"
                }
            }
        )

        Rayfield:Notify(
            {
                Title = "Impulse Cheats",
                Content = "Impulse Cheats loaded! Enjoy :) ඞ",
                Duration = 6.5,
                Image = 4483362458,
                Actions = {
                    Ignore = {
                        Name = "Okay!",
                        Callback = function()
                            print("Impulse Loaded!")
                        end
                    }
                }
            }
        )

        local Tab = Window:CreateTab("Main", 4483362458)
        local Section = Tab:CreateSection("Main")

        local Button =
            Tab:CreateButton(
            {
                Name = "Autofarm",
                Callback = function()
                    while true do
                        local gui = game:GetService("Players").LocalPlayer.PlayerGui.MainGui

                        local args = {
                            [1] = "Impulse Autofarm Active! Money: " ..
                                gui.CoinsFrame.CoinsAmount.Text .. "$   " .. gui.CoinsFrame.StreakAmount.Text,
                            [2] = "rbxassetid://8623362533",
                            [3] = "41",
                            [4] = "Rick Astley (Cover)",
                            [5] = "rbxassetid://9444036211",
                            [6] = "91",
                            [7] = "1",
                            [8] = "38",
                            [9] = "Never Gonna Give You Up",
                            [10] = 1,
                            [11] = "473nevergonnagiveyouup"
                        }

                        game:GetService("ReplicatedStorage").Remotes.RequestSong:FireServer(unpack(args))

                        local args = {
                            [1] = "Never Gonna Give You Up"
                        }

                        game:GetService("ReplicatedStorage").Remotes.PlayAnimation:FireServer(unpack(args))

                        wait(0.5)
                    end
                end
            }
        )

        local Section = Tab:CreateSection("Removals")

        local Button =
            Tab:CreateButton(
            {
                Name = "Remove Barrier",
                Callback = function()
                    game.Workspace:FindFirstChild("Block"):Destroy()
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Remove Conveyor",
                Callback = function()
                    game.Workspace.Exit:Destroy()
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Remove Guessing Gui",
                Callback = function()
                    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.AnswerGui:Destroy()
                end
            }
        )

        local Tab = Window:CreateTab("Local", 4483362458)
        local Section = Tab:CreateSection("Player")

        local Slider =
            Tab:CreateSlider(
            {
                Name = "Speed",
                Range = {16, 100},
                Increment = 1,
                Suffix = "WalkSpeed",
                CurrentValue = 16,
                Flag = "Slider1",
                Callback = function(Value)
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Become Tall",
                Callback = function()
                    local LocalPlayer = game:GetService("Players").LocalPlayer
                    local Character = LocalPlayer.Character
                    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

                    function rm()
                        for i, v in pairs(Character:GetDescendants()) do
                            if v:IsA("BasePart") then
                                if v.Name == "Handle" or v.Name == "Head" then
                                    if Character.Head:FindFirstChild("OriginalSize") then
                                    end
                                else
                                    for i, cav in pairs(v:GetDescendants()) do
                                        if cav:IsA("Attachment") then
                                            if cav:FindFirstChild("OriginalPosition") then
                                                cav.OriginalPosition:Destroy()
                                            end
                                        end
                                    end

                                    if v:FindFirstChild("AvatarPartScaleType") then
                                    end
                                end
                            end
                        end
                    end

                    rm()
                    wait(0.5)
                    Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
                    wait(1)

                    rm()
                    wait(0.5)
                    Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
                    wait(1)

                    rm()
                    wait(0.5)
                    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
                    wait(1)

                    rm()
                    wait(0.5)
                    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
                    wait(1)

                    rm()
                    wait(0.5)
                    Humanoid:FindFirstChild("HeadScale"):Destroy()
                    wait(1)
                end
            }
        )

        local Section = Tab:CreateSection("Misc")

        local Button =
            Tab:CreateButton(
            {
                Name = "Infinite Coins",
                Callback = function()
                    local args = {
                        [1] = "TrailYellow",
                        [2] = -999999999999999,
                        [3] = "Coins"
                    }

                    game:GetService("ReplicatedStorage").Remotes.BuyItem:FireServer(unpack(args))
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Unlock Camera",
                Callback = function()
                    local speaker = game.Players.LocalPlayer

                    game.Workspace.CurrentCamera:remove()
                    wait(.1)
                    repeat
                        wait()
                    until speaker.Character ~= nil
                    workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA("Humanoid")
                    workspace.CurrentCamera.CameraType = "Custom"
                    speaker.CameraMinZoomDistance = 0.5
                    speaker.CameraMaxZoomDistance = 400
                    speaker.CameraMode = "Classic"
                    speaker.Character.Head.Anchored = false
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Funny Tools",
                Callback = function()
                    local toolremote = game:GetService("ReplicatedStorage").Remotes.SetTool
					local itemlist = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.LightSticksGui.ItemList
                    while wait() do
                    	for i,v in pairs(itemlist:GetDescendants()) do
							toolremote:FireServer(v.Name)
							wait()
						end
						wait()
                    end
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Among Us Pet ඞ",
                Callback = function()
                    local petremote = game:GetService("ReplicatedStorage").Remotes.SetPet

                    petremote:FireServer("PetCrewmate")
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Rainbow Trail",
                Callback = function()
                    while true do
                        local args = {
                            [1] = "TrailRed"
                        }
                        game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                        wait(0.1)

                        local args = {
                            [1] = "TrailYellow"
                        }
                        game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                        wait(0.1)

                        local args = {
                            [1] = "TrailGreen"
                        }
                        game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                        wait(0.1)

                        local args = {
                            [1] = "TrailBlue"
                        }
                        game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                        wait(0.1)

                        local args = {
                            [1] = "TrailPink"
                        }
                        game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                        wait(0.1)

                        local args = {
                            [1] = "TrailBlack"
                        }
                        game.ReplicatedStorage.Remotes.SetTrail:FireServer(unpack(args))

                        wait(0.1)
                    end
                end
            }
        )
       

        local Tab = Window:CreateTab("Misc", 4483362458)
        local Section = Tab:CreateSection("Main")

        local Button =
            Tab:CreateButton(
            {
                Name = "Destroy Gui",
                Callback = function()
                    Rayfield:Destroy()
                end
            }
        )

        local Button =
            Tab:CreateButton(
            {
                Name = "Reset",
                Callback = function()
                    local speaker = game.Players.LocalPlayer

                    speaker.Character:BreakJoints()
                end
            }
        )

        local Label = Tab:CreateLabel("Right Shift - Open / Close")
        local Label = Tab:CreateLabel("Impulse Cheats - Merzt#0001 | nic?#8912")
    end
end
