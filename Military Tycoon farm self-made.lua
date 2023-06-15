_G.shootTarget = false

-- Change Vectors
local ammoLimit = 17
local reloadTime = 3.5
local bps = 100 -- bullets per second

-- Functions
function reload()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ReloadEvent"):FireServer()
end

function shoot()
    local args = {
        [1] = {
            [1] = Vector3.new(-959.5146484375, 120.30354309082031, -2967.536865234375)
        },
        [2] = {
            [1] = Vector3.new(-944.7149658203125, 122.0405044555664, -2969.48876953125)
        },
        [3] = {
            [1] = workspace:WaitForChild("PlayerTycoons"):WaitForChild("{a66b2f86-d022-467d-bfb2-30e9cfd222d7}"):WaitForChild("Unlocks"):WaitForChild("ManualWorker"):WaitForChild("ShootForMoney")
        },
        [4] = {
            [1] = Vector3.new(-959.5146484375, 120.30354309082031, -2967.536865234375)
        },
        [5] = {
            [1] = Vector3.new(0.9997768998146057, 0.02002672851085663, -0.006712537724524736)
        },
        [6] = {
            [1] = Enum.Material.Plastic
        }
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ShootEvent"):FireServer(unpack(args))
end


--Main Loop
while _G.shootTarget == true do
    for count=ammoLimit, 0, 1 do
        wait(1 / bps)    
        shoot()
    end
    reload()
    wait(reloadTime)
end




