defmodule Bot.ScheduleAction do

  alias Bot.Registry
  alias Slack.Sends

  def hello() do
    Sends.send_message("こんにちは", Registry.get_id(), Registry.get_slack())
  end

end
