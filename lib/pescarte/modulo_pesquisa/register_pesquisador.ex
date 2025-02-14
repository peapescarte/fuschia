defmodule Pescarte.ModuloPesquisa.RegisterPesquisador do
  use PescarteWeb, :verified_routes

  alias Pescarte.Database.Repo
  alias Pescarte.Identidades.Adapters.UsuarioAdapter
  alias Pescarte.Identidades.Models.Usuario
  alias Pescarte.ModuloPesquisa.Models.Pesquisador

  alias Supabase.GoTrue

  def run(attrs) do
    Repo.transaction(fn ->
      with {:ok, pesquisador} <- do_create_pesquisador(attrs),
           external = UsuarioAdapter.to_external(pesquisador.usuario),
           {:ok, client} <- Pescarte.get_supabase_client(),
           {:ok, external} <- GoTrue.Admin.create_user(client, external),
           opts = [type: :signup, redirect_to: ~p"/confirmar"],
           :ok <- GoTrue.resend(client, external.email, opts),
           {:ok, _} <- Usuario.link_to_external(pesquisador.usuario, external.id) do
        pesquisador
      else
        {:error, err} -> Repo.rollback(err)
        err -> Repo.rollback(err)
      end
    end)
  end

  @assocs [:linha_pesquisa_principal, :campus, :linhas_pesquisa, usuario: [:contato]]

  defp do_create_pesquisador(attrs) do
    %Pesquisador{}
    |> Pesquisador.changeset(attrs)
    |> Repo.insert()
    |> then(fn
      {:ok, pesquisador} -> {:ok, Repo.preload(pesquisador, @assocs)}
      {:error, _changeset} = err -> err
    end)
  end
end
