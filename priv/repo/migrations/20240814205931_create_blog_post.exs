defmodule Pescarte.Database.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:blog_post, primary_key: false) do
      add :id, :string, primary_key: true
      add :user_id, references(:usuario, type: :string), null: false
      add :titulo, :string
      add :conteudo, :binary
      add :link_imagem_capa, :string
      add :published_at, :naive_datetime

      timestamps()
  end

  create unique_index(:blog_post, :titulo)
  create index(:blog_post, :user_id)
end
end