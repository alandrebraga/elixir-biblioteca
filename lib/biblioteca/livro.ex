defmodule Biblioteca.Livro do
  use Ecto.Schema
  import Ecto.Changeset

  alias Biblioteca.Autor

  @fields [:titulo, :descricao, :genero, :publicacao, :autor_id]

  schema "livro" do
    field :titulo, :string
    field :descricao, :string
    field :genero, :string
    field :publicacao, :date

    belongs_to :autor, Autor
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end
end
