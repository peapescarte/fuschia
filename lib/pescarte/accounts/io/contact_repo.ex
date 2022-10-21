defmodule Backend.Accounts.IO.ContactRepo do
  use Backend, :repo

  alias Backend.Accounts.Models.Contact
  alias Backend.Common.Formats

  @email_format Formats.email()
  @mobile_format Formats.mobile()

  @fields ~w(mobile email address)a

  def changeset(%Contact{} = contact, attrs \\ %{}) do
    contact
    |> cast(attrs, @fields)
    |> validate_required(@fields)
    |> validate_format(:mobile, @mobile_format)
    |> validate_length(:email, max: 160)
    |> validate_format(:email, @email_format)
    |> unsafe_validate_unique(:email, Backend.Repo)
    |> unique_constraint(:email)
  end

  @impl true
  def fetch(id) do
    fetch(Contact, id)
  end

  @impl true
  def insert_or_update(attrs) do
    %Contact{}
    |> changeset(attrs)
    |> Database.insert_or_update()
  end
end
