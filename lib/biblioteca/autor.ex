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
end
