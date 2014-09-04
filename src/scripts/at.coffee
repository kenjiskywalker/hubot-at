# Description:
#   Notification at specific time
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
## Commands:
#   hubot at <HH:MM> <message>
#
# Author:
#   kenjiskywalker, taiyoh

module.exports = (robot) ->
  robot.respond /at ((\d{2}):(\d{2})) (.+)$/i, (msg) ->
    user  = msg.message.user.name

    hour = msg.match[2]
    min  = msg.match[3]

    if (0 <= hour && hour <= 23 && 0 <= min && min <= 59)
      d = new Date
      d.setHours parseInt(hour, 10)
      d.setMinutes parseInt(min, 10)

      # 00sec at static 
      d.setSeconds('00', 10)

      # date = 'HH:MM'
      date = msg.match[1]

      text = msg.match[4]

      diff = d.getTime() - (new Date).getTime()
      console.log(diff)

      if (diff > 0)
        msg.send "OK. I'll tell you \"#{text}\" at #{date}"

        setTimeout(() ->
          msg.send "#{user}: It's #{date}. Don't forget \"#{text}\""
        , diff)
      else
        msg.send "#{date} is past"
