defmodule BibliotecaWeb.BibliotecaController do
  use BibliotecaWeb, :controller

  def(home(conn, _params)) do
    render(conn, :home, layout: false)
  end
end
