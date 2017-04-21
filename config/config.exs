use Mix.Config

config :quantum, :bot,
cron: [
    "* * * * *": {Bot.ScheduleAction, :hello}
]

config :quantum,
  timezone: "Asia/Tokyo"

config :slack,
 api_token: "{API_TOKEN}"
