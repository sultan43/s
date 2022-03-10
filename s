getgenv().autoTap = false;
getgenv().autoRebirth = false;
getgenv().bugEgg = false;
     
     local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

     local w = library:CreateWindow("Clicking Simulator X") -- Creates the window
     
     local m = w:CreateFolder("Main") -- Creates the folder(U will put here your buttons,etc)
     local t = w:CreateFolder("Teleport")
     m:DestroyGui()
     
     -------------------------------------------

     m:Toggle("Auto Click",function(bool)
         getgenv().autoTap = bool
         print('Auto Tap is ', bool)
         if bool then
             doTap();
         end
     end)
     

     m:Toggle("Auto Rebirth",function(bool)
        getgenv().autoRebirth = bool
        print('Auto Tap is ', bool)
        if bool then
            autoRebirth(1000000000);
        end
    end)

    m:Toggle("Auto Buy Pet",function(bool)
        getgenv().bugEgg = bool
        print('Auto Tap is ', bool)
        if bool then
            buyEgg('basic');
        end
    end)



     -- TELEPORTS -- 
    t:Button("Unlock Forest Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(101.25, 1122.04199, -346.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
    end)
    t:Button("Unlock Desert Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.1826706, 2620.50464, -325.823151, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627)    
    end)
    t:Button("Unlock Candy Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(101.25, 5283.6416, -331.200012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    t:Button("Unlock Lava Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.5500031, 10262.7422, -353.700012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    t:Button("Unlock Icey Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(109.350006, 15396.9424, -353.700012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    t:Button("Unlock Intergalatic Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94.9500046, 24524.041, -353.700012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    t:Button("Unlock Weary Island",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(94.9500046, 31748.0566, -379.66861, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    
     

     function doTap()
        spawn(function()
            while getgenv().autoTap == true do
                local args = {[1] = 9999999099252700000000009}
                game:GetService("ReplicatedStorage").Honeypot.Server.Remotes:FindFirstChild("Remotes - Server"):FindFirstChild("IncrementClicks - RemoteEvent"):FireServer(unpack(args))
                wait()
            end
        end)
    end
    function autoRebirth(rebirthAmount)
        spawn(function()
            while getgenv().autoRebirth == true do
                local args = {[1] = 1000000000}
                game:GetService("ReplicatedStorage").Honeypot.Server.Remotes:FindFirstChild("Remotes - Server"):FindFirstChild("Rebirth - RemoteEvent"):FireServer(unpack(args))
                wait()
            end
        end)
    end
    function buyEgg(eggTybe)
        spawn(function()
            while wait() do
                if not getgenv().bugEgg then break end 
                local args = {[1] = "Acid Egg",[2] = 1,[3] = game:GetService("Players").LocalPlayer.leaderstats.Clicks}
                game:GetService("ReplicatedStorage").BearUi.Remotes.RequestEggOpen:FireServer(unpack(args))
            end
        end)
    end





     
     --[[
     How to refresh a dropdown:
     1)Create the dropdown and save it in a variable
     local yourvariable = b:Dropdown("Hi",yourtable,function(a)
         print(a)
     end)
     2)Refresh it using the function
     yourvariable:Refresh(yourtable)
     How to refresh a label:
     1)Create your label and save it in a variable
     local yourvariable = b:Label("Pretty Useless NGL",{
         TextSize = 25; -- Self Explaining
         TextColor = Color3.fromRGB(255,255,255);
         BgColor = Color3.fromRGB(69,69,69);
     })
     2)Refresh it using the function
     yourvariable:Refresh("Hello") It will only change the text ofc
     ]]
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     --    _G.autoattack = true;
--while _G.autoattack == true do
   -- local args = {[1] = 1}
   -- game:GetService("ReplicatedStorage").Remotes.TappingEvent:FireServer(unpack(args))
  -- wait()
 --  print(t)
     
     
     -- spawn(function()
        -- while wait () do
       -- if not getgenv().bugEgg then break end;
       -- Remotes.Functions.EggHatch:InvokeServer(unpack(args))
      --  end
 --   end)
-- end
