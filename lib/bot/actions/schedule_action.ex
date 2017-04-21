defmodule Bot.ScheduleAction do
  @moduledoc false

  alias Bot.Registry
  alias Slack.Sends

  def hello() do
    send_message("こんにちは")
  end

  def send_message(message) do
    Sends.send_message(message, Registry.get_id(), Registry.get_slack())
  end

end
