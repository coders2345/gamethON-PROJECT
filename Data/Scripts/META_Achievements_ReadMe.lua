    --[[
    Meta Achievements - README
    v0.1.0 - 2021/5/29
    Developed by: Morticai (META) (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
    UI Designed by: KonzZwodrei (META) (https://www.coregames.com/user/fdb45035857a4e87b17344cd891c48c5)


    This package is a work in progress.


       Description:
    Meta Achievements is a simple component that allows creators to drag and drop goals that players can strive for in their games. 
    This component features a lot of customization options. Creators have full control over how, when, and why players can unlock Achievements
    with a lot of examples out of the box. Achievements also provides a full-featured API, allowing for complete customization and integration 
    with any game.


    Video Tutorial Link: 
    https://www.youtube.com/watch?v=WGpzIQEMOBo
    
    
    Setup
    =====

    1. To begin add the Achievement System to your hierarchy.
    2. Select the Achievement System folder to view its custom properties. 
    3. Each custom property impacts how the system will work in your game. 
    
    For more information on each option, hover over the custom property name to reveal the tooltip explaining each setting.


    Achievement Types
    =================

    1. KILL - grants 1 progress when one player kills another
    2. DAMAGE - grants the amount of damage done to another player as progress
    3. HEALING - grants the amount of -damage done to another player as progress
    4. WIN - grants 1 progress if the player is on the winning team at the end of around
    5. ROUND - grants 1 progress for each round played - determined by the onRoundEndEvent
    6. RESOURCE - unlocks the achievement if the player has enough of that particular resource
    7. SOCIAL - Has both Chat-based and Friend based achievement types. 
        1) Chat - each time a player's in-game message includes the ChatString for an achievement they're granted 1 progress
        2) Friends - if the player is Core Friends with other players that are player your game, it'll unlock
    8. EXPLORE - Trigger-based achievements, can use both Interaction & Overlap triggers to unlock and achievement
    9. RETENTION - Daily login based Achievements
    10. CUSTOM (Advanced) - A section allowing creators to add their custom achievements through the use of the API.


    Adding / Editing Achievements
    =============================

    1. Expand the Achievement System to view its children and expand the AchievementList:
    2. As children of the AchievementList you'll see several groups. As an example expand the "KILL" group to see the "Kill Example"
    object. 

        1) This is an example of Achievement, click on it to reveal the different options as custom properties, which all impact how 
        the Achievement will function in your game.

        2) Hover over any of the custom properties to reveal the tooltip to see what each option does.


    Adding / Editing Rewards
    ========================

    If an Achievement will grant rewards on completion, be sure that the GivesReward custom property is set to true, and that 
    reward data templates are added as children, under the Achievement. 
    
    Out of the box, the Achievement system allows 1 - 3 different resources based rewards. While it is possible to give more rewards
    for an Achievement, the reward simply will not show up in the UI.
    

    Editing UI
    ==========

    1. To edit the default UI expands the following in your hierarchy: Achievement System > ClientContext > UI > UI Container.
    2. Under UI Container you'll find three panels:

            1) PRIMARY:

            A panel that opens when a player presses a keybind during the game. By default, this shows Active & Completed
            Achievements.

            To edit this panel, set Visibility to Force On, but remember to set this back to Force Off before publishing.

            All the children of this panel are static and are changed directly in the hierarch. Though it is only recommended
            to change Colors, Fonts, Borders. 
            
            Changing the width/height of the parent panel can result in spacing issues due to the Achievement panels being spawned 
            at run time.

            To edit the spawned Achievement find "ACHIEVEMENT_Panel_Template" in the dependancies. To better visalize your changes, drag
            the template as a child of "ACHIEVEMENT_LIST". To edit simply right-click then click "Deinstance This Object" to begin editing. 
                
            Once you're happy with your edits, be sure to right-click and press "Update Template From This". Then delete the template from
            the heirarchy.

            2) NOTIFICATION: 

            The dialog that popups informing the player of which Achievement they completed. 
            
            Currently when an Achievement has completed the visibility of this panel is toggled on for 2 seconds and then back off. 
            
            To edit, change the Visibility from Force Off to Force On. 

            Feel free to change its colors and position. Just do not delete objects as missing object references will cause errors.

            Once you're happy with the edits, change the Visibility back to Force off.

            3) EndRound: 

            A panel set up for creators allows players to view all of the repeatable Achievements they completed in a round. 
            
            Achievements that are set to IsRepeatable will show up here. 
            
            This panel can be moved if you have a custom End Screen UI where you wish for it to be displayed. 

            Note: Changing Colors, Text & Borders are quite easy. It's not recommended at this time, to change the size of the scroll panels
            as that would require some coding knowledge at this time.





    ]]--