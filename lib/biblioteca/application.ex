defmodule Biblioteca.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      BibliotecaWeb.Telemetry,
      # Start the Ecto repository
      Biblioteca.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Biblioteca.PubSub},
      # Start Finch
      {Finch, name: Biblioteca.Finch},
      # Start the Endpoint (http/https)
      BibliotecaWeb.Endpoint
      # Start a worker by calling: Biblioteca.Worker.start_link(arg)
      # {Biblioteca.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Biblioteca.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BibliotecaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
