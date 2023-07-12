defmodule Storybook.Botaofiltro do
  use PhoenixStorybook.Story, :page

  alias PescarteWeb.DesignSystem

  def render(assigns) do
    ~H"""
    <div class="search">
      <Lucideicons.search class="text-blue-100" />
      <DesignSystem.text_input type="text" name="search"
          value=""  placeholder="Faça uma Pesquisa....." />

      <div class="links-item">
       <DesignSystem.button class="icon-button" style="secondary">
       <Lucideicons.filter class="text-white-100" />
        <DesignSystem.text size="sm" color="text-white-100">Filtro</DesignSystem.text>
       </DesignSystem.button>
      </div>

      <div class="links-item">
       <DesignSystem.button class="icon-button" style="primary" submit>
        <Lucideicons.book class="text-white-100" />
        <DesignSystem.text size="sm" color="text-white-100">Novo Relatório</DesignSystem.text>
       </DesignSystem.button>
      </div>

      <div class="links-item">
       <DesignSystem.button class="icon-button" style="secondary">
        <Lucideicons.files class="text-white-100" />
        <DesignSystem.text size="sm" color="text-white-100">Compilar</DesignSystem.text>
       </DesignSystem.button>
      </div>
    </div>
    """
  end
end
