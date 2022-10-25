defmodule Pescarte.Accounts.Models.ApiKey do
  @moduledoc false

  use Pescarte, :model

  schema "api_key" do
    field :key, Ecto.UUID
    field :description, :string
    field :active, :boolean

    timestamps()
  end
end