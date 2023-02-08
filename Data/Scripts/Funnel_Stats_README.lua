--[[
    Analytics - Funnel Stats
    v1.0 - 2020/10/18
    by: Morticai
    

    Usage
    =====

    1) This module tracks up to 24 different player actions, allowing creators to see how Players interact with their game.
    
    2) Currently, a Player's first session time (Up to 9,999 seconds) will be tracked and stored.
    
    3) Each Player is put into either group 1 (Group A) or 2 (Group B) based on Player.id, this allows creators to split test,
       various functionality into their games.
    
    4) All of this data is saved using leaderboards, so it can be accessed regardless if a player is currently online or not.


    Basic Analytics Setup
    =====================
    
    1. Drop a copy of the "FunnelStatTracker" template into the hierarchy.
    
    2. Create a new Net Reference - Global Leaderboard of up to 500 entires and
       drag it into "FunnelLeaderBoard" in FunnelModule.lua (Server) and FunnelModuleClient.lua (Client)
    
    3. Inside of FunnelStatTracker ROOT, adjust the "AnalyticsPanelKeybind" to the keybind you wish to use to open the 
       Funnel Analytics Stats defaulted to F9.
      
    4. If you wish for only certain people to be able to access the Funnel Analytics Stats dashboard, change "isDevMode" in the 
       FunnelStatTracker ROOT to false. And add your Player.id to the ADMIN_TABLE in FunnelStatsUI.lua
    
    5. To filter out old players so they are not tracked, change "OldPlayerCheck(Player)" in FunnelModule.lua 
       to return a resource, or some other check to identify a previous player. (Requires persistent storage)

    6. To edit steps, change the names of each inside of "FunnelStepsData.lua" starting on line 24. Currently a max of 24 steps can be tracked,
       if you for whatever reason do not wish to track all 24 steps, simply change their names to a place holder, rather than deleting them.a

    7. To track a step as complete, fire _G.Funnel.SetPlayerStepComplete(Player, stepIndex) after the player completed the approriate interaction.
       _G.Funnel.SetPlayerStepComplete(Player, stepIndex) can be used from both client and server side scripts. 
       Be sure to pass the Player and the stepIndex, which is simply an int for the apporiate step. 
       For EX => to track step 1 as complete you simply would put _G.Funnel.SetPlayerStepComplete(Player, 1)


    Split Testing Setup
    ===================

    -- Split testing allows you to test various functionality in a game for one group of players vs. another.
    -- For example, group A may be shown a tutorial, while group B isn't. This allows you to see how changes impact your game's performance.
    
    1. To identify a Players group use: _G.Funnel.GetPlayerTestGroup(Player) on both Server or Client scripts. This will return 1 or 2, a Players groupId will never change.

    2. Based on the Players group, you'll want to have certain functionality only show to groupId 1, while for example the tutorial isn't shown to groupId 2.
       

    Known Issues in This Version
    ============================
    -- Stats display can become quite slow, with over 200 entries.
    -- Toggling between A / B split test panels to quickly can slow the stat loading down. Press F9 to toggle the stats to fix this.
    
    
--]]