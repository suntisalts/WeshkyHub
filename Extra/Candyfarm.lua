for _, house in workspace.Houses:GetChildren() do
    if house:FindFirstChild("Door") and house.Door:FindFirstChild("DoorInnerTouch") then
        pcall(firetouchinterest, root, house.Door.DoorInnerTouch, 0)
    end
end
