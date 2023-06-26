defmodule Biblioteca.Autor do
  use Ecto.Schema
  import Ecto.Changeset

  alias Biblioteca.Livro

  @fields [:nome, :sobrenome, :idade, :cidade, :estado, :pais]

  schema "autor" do
    field :nome, :string
    field :sobrenome, :string
    field :idade, :integer
    field :cidade, :string
    field :estado, :string
    field :pais, :string

    has_many :livros, Livro
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end

  def listar_autores do
    Biblioteca.Repo.all(Biblioteca.Autor)
  end

  def listar_autor(id) do
    Biblioteca.Repo.get(Biblioteca.Autor, id)
    |> Biblioteca.Repo.preload([:livros])
  end
end
