local Icons = {}
        local Success, Response =
            pcall(
            function()
                Icons =
                    HttpService:JSONDecode(
                    game:HttpGetAsync(
                        "https://raw.githubusercontent.com/evoincorp/lucideblox/master/src/modules/util/icons.json"
                    )
                ).icons
            end
        )
        local MMBStatus = ""
        if not Success then
            game.Players.LocalPlayer:Kick("New Update : https://discord.gg/9PzEWrzgXR")
        end
