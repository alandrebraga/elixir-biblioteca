defmodule BibliotecaWeb.AutorController do
  use BibliotecaWeb, :controller
  import Plug.Conn

  def create(conn, %{"autor" => autor_params}) do
    case Biblioteca.Autor.inserir_autor(autor_params) do
      {:ok, _autor} ->
        conn
        |> put_flash(:info, "Autor cadastrado com sucesso.")
        |> redirect(to: "/")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :home, layout: false)
    end
  end
end
