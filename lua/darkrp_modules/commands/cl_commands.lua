/*---------------------------------------------------------------------------
F4 menu tab modification module.
---------------------------------------------------------------------------*/

--if true then return end -- REMOVE THIS LINE TO ENABLE THIS MODULE

local tabName = "Commands"




local function createF4MenuTab()
    --add the command below as it shows in the F1 menu, or as how you would type it in chat
    local Commands = {
    "/drop",
    "/moneydrop",
    "/give",
    "/makeshipment",
    "/name",
    "/pm",
    "/sleep",
    "/demote",
    "/switchjob",
    "/job",
    "/unownalldoors",
    "/requestlicense",
    "/agenda",
    "/addlaw",
    "/removelaw",
    "/placelaws",
    "/broadcast",
    "/lockdown",
    "/unlockdown",
    "/warrant",
    "/wanted",
    "/unwanted"
    }
    --just add the text needed for the new button at the bottom or where you added it into the previous
    local ButtonText ={
    "Drop current weapon",
    "Drop money on the floor (amount)",
    "Give money to player you're looking at (amount)",
    "Make Shipment out of dropped weapon",
    "Change RP name (name)",
    "Send a private message to someone (name , message)",
    "Go to sleep or wake up",
    "Demote a player from their current job (name, reason)",
    "Switch jobs with the player you are looking at",
    "Change your job title (name)",
    "Sell all your doors",
    "Request a gun license",
    "Set the agenda",
    "Add a law to the lawboard (law)",
    "Remove a law from the lawboard (lawnumber)",
    "Place the lawboard",
    "Broadcast something as Mayor (message)",
    "Start a lockdown",
    "Stop the lockdown",
    "Warrant a person (name, reason)",
    "Make a person wanted (name, reason)",
    "Remove a person their wanted status (name)"
    }

    --Same here but this is for how many extra things you need to type after the command (up to 2). 0 for none, 1 for 1 argument, 2 for 2 arguments
    local Arguments={
    0,
    1,
    1,
    0,
    1,
    2,
    0,
    2,
    0,
    1,
    0,
    0,
    1,
    1,
    1,
    0,
    1,
    0,
    0,
    2,
    2,
    1
    }

    local panel = vgui.Create("DPanel")
    panel.Paint = function()
        surface.SetDrawColor(40, 4, 110, 0)
        --surface.DrawRect(0, 0, DFrame1:GetWide(), DFrame1:GetTall())
    end
    local x = 0
    local y = 0
    local k = 0
    for i, command in pairs(Commands) do
        local CButton = vgui.Create( "DButton", panel)
        CButton:SetText( ButtonText[i] )
        CButton:SetPos( x, y )
        CButton:SetSize(ScrW()/3, 30 )
        CButton:SetVisible( true )
        CButton.DoClick = function ()
            if Arguments[i] == 1 then
                local APanel = vgui.Create( "DFrame" )
                APanel:SetPos( 500,150 )
                APanel:SetSize( 500, 100 )
                APanel:SetTitle( ButtonText[i] )
                APanel:SetVisible( true )
                APanel:SetDraggable( true )
                APanel:ShowCloseButton( true )
                APanel:MakePopup()
          
                local AText = vgui.Create( "DTextEntry", APanel )
                AText:SetPos( 5,25 )
                AText:SetTall( 20 )
                AText:SetWide( 490 )
                AText:SetEnterAllowed( true )
                AText.OnEnter = function()
                    RunConsoleCommand( "say", command .. " " ..  AText:GetValue())
                    APanel:Close()
                end
                local AButton = vgui.Create( "DButton", APanel )
                AButton:SetText( "Done" )
                AButton:SetPos( 200, 73 )
                AButton:SetSize( 60, 20 )
                AButton.DoClick = function ()
                    RunConsoleCommand( "say", command .. " " .. AText:GetValue())
                    APanel:Close()
                end
            elseif Arguments[i] == 2 then
                local APanel = vgui.Create( "DFrame" )
                APanel:SetPos( 500,150 )
                APanel:SetSize( 500, 120 )
                APanel:SetTitle( ButtonText[i] )
                APanel:SetVisible( true )
                APanel:SetDraggable( true )
                APanel:ShowCloseButton( true )
                APanel:MakePopup()
          
                local ATexta = vgui.Create( "DTextEntry", APanel )
                ATexta:SetPos( 5,25 )
                ATexta:SetTall( 20 )
                ATexta:SetWide( 490 )
                ATexta:SetEnterAllowed( false )

                local ATextb = vgui.Create( "DTextEntry", APanel )
                ATextb:SetPos( 5,50 )
                ATextb:SetTall( 20 )
                ATextb:SetWide( 490 )
                ATextb:SetEnterAllowed( false )

                local AButton = vgui.Create( "DButton", APanel )
                AButton:SetText( "Done" )
                AButton:SetPos( 200, 73 )
                AButton:SetSize( 60, 20 )
                AButton.DoClick = function ()
                    RunConsoleCommand( "say", command .. " " .. ATexta:GetValue() .. " " .. ATextb:GetValue())
                    APanel:Close()
                end
            else
            RunConsoleCommand("say", command)
            end
      
        end
        k = i % 2
        if k == 0 then
            x = 0
            y = y + 35
        else
            x = x + ScrW()/3
        end
    end
    DarkRP.addF4MenuTab(tabName, panel)
end
hook.Add("F4MenuTabs", "MyCustomF4MenuTab", createF4MenuTab)