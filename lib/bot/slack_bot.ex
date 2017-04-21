defmodule Bot.SlackBot do

  use Slack

  alias Bot.Registry

  def handle_connect(slack, state) do
    Registry.set_channel_id(lookup_channel_id("#general", slack))
    Registry.set_slack(slack)
    send_message("参上！", Registry.get_id(), slack)

    {:ok, state}
  end

end
