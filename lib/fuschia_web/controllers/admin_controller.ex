defmodule FuschiaWeb.AdminController do
  use FuschiaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
 end
