--[[
This project is open sourced and freely available for use.

F.A.Q
- Why is my screen dark?
When you open this project for the first time, the screen will be dark.
This is due to post process effect we used for fading.
Open "Environment" folder and click on eye icon on "Post Processes" to hide the folder in editor.

- Why do I see warnings "The NetReference provided no longer exists, it may have been removed from project."?
If you do not care about Perks, simply uncheck "Warning" yellow tickbox in Event Log.
If you are in Perks Program, you can create test perks and fill in all the Net Reference fields.

- Where are the Net References fields?
In Hierarchy:
> Managers/VIP Membership/References                            - 3 Limited-Time Perks
> Managers/Insta Grow Manager/Bundles                           - 5 Repeatable Perks (Insta Grow Bundles)
> Search for "purchase" and put the same Insta Grow bundle perks
    on each "UI Perk Purchase Button" under "Insta Grow Tab Panel"
> Within the same search, put the VIP perks corresponding to
    each "UI Perk Purchase Button" under "VIP Information"

In Project Content:
> MetalDetectorUpgradesList                             - 4 Permanent Perks
> FishingRodUpgradesList                                - 4 Permanent Perks
> ShovelUpgradesList                                    - 4 Permanent Perks
(You will see properties like "Level2Perk", fill those out each with unique permanent perks)

--]]