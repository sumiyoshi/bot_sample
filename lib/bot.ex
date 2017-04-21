defmodule Bot do
  use Application

  def start(_type, _args) do
    Bot.Supervisor.start_link
  end
end
