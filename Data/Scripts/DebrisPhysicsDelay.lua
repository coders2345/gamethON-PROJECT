Task.Wait(0.1)
script.parent:SetScale(Vector3.ONE * math.random()*3)
script.parent.isSimulatingDebrisPhysics = true
script.parent:SetVelocity(Vector3.New(math.random(-500,500),math.random(-500,500),math.random(-100,0)))