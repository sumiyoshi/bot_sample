defmodule Bot.Registry do

  @key :slack_registry

  def opts(), do: [:unique, @key]

  def set_channel_id(channel_id), do: Registry.register(@key, :id, channel_id)

  def set_slack(slack), do: Registry.register(@key, :slack, slack)

  def update_slack(slack), do: Registry.update_value(@key, :slack, fn(_) -> slack end)

  def get_id() do
    case Registry.lookup(@key, :id) do
      [{_pid, channel_id}] -> channel_id
      _ -> nil
    end
  end

  def get_slack() do
    case Registry.lookup(@key, :slack) do
      [{_pid, slack}] -> slack
      _ -> nil
    end
  end
end
