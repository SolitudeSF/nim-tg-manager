import config
import manage
import restrict

import telebot, asyncdispatch, logging, options


let bot = newTeleBot(apiKey)

# management
bot.onCommand("promote", promoteHandler)
bot.onCommand("demote", demoteHandler)
bot.onCommand("pin", pinHandler)
bot.onCommand("unpin", unpinHandler)
bot.onCommand("invite", inviteHandler)
bot.onCommand("admins", adminList)

# restrictictions
bot.onCommand("ban", banHandler)
bot.onCommand("tban", tbanHandler)
bot.onCommand("banme", banMeHandler)
bot.onCommand("unban", unbanHandler)
bot.onCommand("kick", kickHandler)
bot.onCommand("kickme", kickMeHandler)

bot.poll(timeout=500)