defmodule Bot.Supervisor do

  use Supervisor

  def start_link(opts \\ []) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    api_key = Application.get_env(:slack, :api_token)

    children = [
      worker(Slack.Bot, [Bot.SlackBot, [], api_key]),
      supervisor(Registry, Bot.Registry.opts())
    ]

    supervise(children, strategy: :one_for_one)
  end

end
