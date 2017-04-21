use Mix.Config

config :quantum, :bot,
cron: [
    "* * * * *": {Bot.ScheduleAction, :hello}
]

config :slack,
 api_token: "{API_TOKEN}"