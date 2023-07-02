defmodule BibliotecaWeb.BibliotecaComponents do
  use Phoenix.Component

  def formulario_livro(assigns) do
    ~H"""
    <div class="container mx-auto p-4">
      <h1 class="text-2xl font-bold mb-4">Create Livro</h1>
    
      <form>
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="titulo">Título:</label>
          <input
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="titulo"
            type="text"
            placeholder="Enter Título"
          />
        </div>
    
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="descricao">Descrição:</label> <textarea
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="descricao"
            rows="3"
            placeholder="Enter Descrição"
          >
          </textarea>
        </div>
    
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="genero">Gênero:</label>
          <input
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="genero"
            type="text"
            placeholder="Enter Gênero"
          />
        </div>
    
        <div class="mb-4">
          <label class="block text-gray-700 text-sm font-bold mb-2" for="publicacao">
            Publicação:
          </label>
    
          <input
            class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="publicacao"
            type="date"
          />
        </div>
    
        <div class="flex items-center justify-between">
          <button
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
            type="submit"
          >
            Create
          </button>
        </div>
      </form>
    </div>
    """
  end

  def formulario_autor(assigns) do
    ~H"""
    <div class="container mx-auto p-4">
      <h1 class="text-2xl font-bold mb-4">Create Autor</h1>
    
      <form>
        <div class="grid grid-cols-2 gap-4 mb-4">
          <div>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="nome">Nome:</label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              id="nome"
              type="text"
              placeholder="Enter Nome"
            />
          </div>
    
          <div>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="sobrenome">
              Sobrenome:
            </label>
    
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              id="sobrenome"
              type="text"
              placeholder="Enter Sobrenome"
            />
          </div>
        </div>
    
        <div class="grid grid-cols-2 gap-4 mb-4">
          <div>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="idade">Idade:</label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              id="idade"
              type="number"
              placeholder="Enter Idade"
            />
          </div>
    
          <div>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="cidade">Cidade:</label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              id="cidade"
              type="text"
              placeholder="Enter Cidade"
            />
          </div>
        </div>
    
        <div class="grid grid-cols-2 gap-4 mb-4">
          <div>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="estado">Estado:</label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              id="estado"
              type="text"
              placeholder="Enter Estado"
            />
          </div>
    
          <div>
            <label class="block text-gray-700 text-sm font-bold mb-2" for="pais">País:</label>
            <input
              class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              id="pais"
              type="text"
              placeholder="Enter País"
            />
          </div>
        </div>
    
        <div class="flex items-center justify-between">
          <button
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
            type="submit"
          >
            Create
          </button>
        </div>
      </form>
    </div>
    """
  end

  def renderizar_tabelas(assigns) do
    ~H"""
    <div class="flex space-x-4">
      <div class="w-1/2 ml-2">
        <h2 class="text-center font-bold text-xl mb-4 mt-5">Tabela Livros</h2>
    
        <table class="w-full border border-gray-300">
          <thead>
            <tr>
              <th class="px-4 py-2 text-center">Título</th>
    
              <th class="px-4 py-2 text-center">Descrição</th>
    
              <th class="px-4 py-2 text-center">Gênero</th>
    
              <th class="px-4 py-2 text-center">Publicação</th>
            </tr>
          </thead>
    
          <tbody class="divide-y divide-gray-200">
            <%= for livro <- Biblioteca.Livro.listar_livros() do %>
              <tr>
                <td class="px-4 py-2 text-center"><%= livro.titulo %></td>
    
                <td class="px-4 py-2 text-center"><%= livro.descricao %></td>
    
                <td class="px-4 py-2 text-center"><%= livro.genero %></td>
    
                <td class="px-4 py-2 text-center"><%= livro.publicacao %></td>
              </tr>
            <% end %>
          </tbody>
        </table>
      </div>
    
      <div class="w-1/2 mr-2">
        <h2 class="text-center font-bold text-xl mb-4 mt-5">Tabela Autores</h2>
    
        <table class="w-full border border-gray-300">
          <thead>
            <tr>
              <th class="px-4 py-2 text-center">Nome</th>
    
              <th class="px-4 py-2 text-center">Sobrenome</th>
    
              <th class="px-4 py-2 text-center">Idade</th>
    
              <th class="px-4 py-2 text-center">Cidade</th>
    
              <th class="px-4 py-2 text-center">Estado</th>
    
              <th class="px-4 py-2 text-center">Pais</th>
            </tr>
          </thead>
    
          <tbody class="divide-y divide-gray-200">
            <%= for autor <- Biblioteca.Autor.listar_autores() do %>
              <tr>
                <td class="px-4 py-2 text-center"><%= autor.nome %></td>
    
                <td class="px-4 py-2 text-center"><%= autor.sobrenome %></td>
    
                <td class="px-4 py-2 text-center"><%= autor.idade %></td>
    
                <td class="px-4 py-2 text-center"><%= autor.cidade %></td>
    
                <td class="px-4 py-2 text-center"><%= autor.estado %></td>
    
                <td class="px-4 py-2 text-center"><%= autor.pais %></td>
              </tr>
            <% end %>
          </tbody>
        </table>
      </div>
    </div>
    """
  end

  def renderizar_header(assigns) do
    ~H"""
    <header class="bg-gray-800 text-white">
      <nav class="flex items-center justify-between px-6 py-4">
        <div>
          <a href="http://localhost:4000/">Biblioteca Elixir </a>
        </div>
    
        <ul class="flex space-x-4">
          <li><a href="http://localhost:4000/cadastro" class="hover:text-gray-300">Cadastrar</a></li>
    
          <li><a href="#" class="hover:text-gray-300">Sobre</a></li>
    
          <li><a href="#" class="hover:text-gray-300">Contato</a></li>
        </ul>
      </nav>
    </header>
    """
  end
end
