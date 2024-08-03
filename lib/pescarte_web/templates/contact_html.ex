defmodule PescarteWeb.ContactHTML do
  use PescarteWeb, :html

  embed_templates("contact_html/*")

  def form_render(assigns) do
    ~H"""
    <.simple_form for={} action={~p"/contato"} class="contact-form">
      <div class="form-inputs">
        <.text size="h1" color="text-blue-100">Entre Em Contato</.text>
        <div class="input-area">
          <.text size="lg" color="text-black-80">Nome</.text>
          <input type="text" name="form-name" id="form-name" placeholder="João da Silva" required />
        </div>
        <div class="input-area">
          <.text size="lg" color="text-black-80">Email</.text>
          <input
            type="email"
            name="form-email"
            id="form-email"
            placeholder="joaodasilva@email.com"
            required
          />
        </div>
        <div class="input-area">
          <.text size="lg" color="text-black-80">Assunto</.text>
          <select id="form-dropdown" name="options" required>
            <option value="Dúvida">Dúvida</option>
            <option value="Comentário">Comentário</option>
            <option value="Solicitação">Solicitação</option>
            <option value="Outro">Outro</option>
          </select>
        </div>
        <div class="input-area">
          <.text size="lg" color="text-black-80">Mensagem</.text>
          <textarea
            name="form-message"
            rows="10"
            id="form-message"
            placeholder="Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quibusdam voluptates, nam provident inventore perferendis ea ipsum? Distinctio, pariatur accusamus. Facilis, deleniti vel repudiandae aliquam voluptatibus sed. Delectus, quae. Iusto, nam?"
            required
          >
            </textarea>
        </div>
      </div>

      <:actions>
        <button type="submit" class="send-button">
          <img src={~p"/images/contato/send.svg"} />
          <.text size="lg" color="text-white-100">Enviar</.text>
        </button>
      </:actions>
    </.simple_form>
    """
  end
end
