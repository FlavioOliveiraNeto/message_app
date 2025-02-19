<h1><b>Message App</b></h1>

<p>Aplicação de troca de mensagens em tempo real desenvolvida com Rails no backend e Vue.js no frontend. O sistema permite que usuários autenticados enviem e recebam mensagens, com suporte para envio de arquivos, paginação, métricas e processamento assíncrono.</p>

<hr>

<h2>Funcionalidades</h2>
<ul>
  <li><b>Implementação de um sistesma de usuários</b> com cadastro via seed ou criação manual (sem fazer parte da interface gráfica).</li>
  <li><b>Autenticação de usuários</b> via JWT (JSON Web Token), com interface simples utilizando apenas o user_id.</li>
  <li><b>Envio, recebimento e visualização de mensagens</b> entre usuários, através dos endpoints `POST /messages` e `GET /messages/{user_id}`.</li>
  <li><b>Restrições de acesso</b> apenas usuários autenticados podem enviar mensagens e visualizar seu próprio histórico.</li>
  <li><b>Comunicação em tempo real</b> utilizando WebSocket (ActionCable).</li>
  <li><b>Envio de arquivos</b> como anexos em mensagens.</li>
  <li><b>Paginação</b> na listagem de mensagens para melhor desempenho.</li>
  <li><b>Endpoint de métricas</b> para estatísticas sobre mensagens e usuários ativos.</li>
  <li><b>Processamento assíncrono</b> de mensagens utilizando Sidekiq e Redis.</li>
</ul>

<hr>

<h2>Tecnologias Utilizadas</h2>
<h4>Backend (Rails API)</h4>
<ul>
  <li><b>Ruby on Rails:</b> Framework para construção da API.</li>
  <li><b>JWT:</b> Autenticação segura via tokens.</li>
  <li><b>ActionCable:</b> Comunicação em tempo real com WebSocket.</li>
  <li><b>CarrierWave:</b> Upload de arquivos.</li>
  <li><b>Sidekiq:</b> Processamento assíncrono de tarefas.</li>
  <li><b>Redis:</b> Armazenamento em cache e filas para Sidekiq e ActionCable.</li>
  <li><b>Kaminari:</b> Paginação de mensagens.</li>
  <li><b>PostgreSQL:</b> Banco de dados relacional.</li>
</ul>

<h4>Frontend (Vue.js)</h4>
<ul>
  <li><b>Vue.js:</b> Framework JavaScript para a interface do usuário.</li>
  <li><b>Axios:</b> Cliente HTTP para consumir a API Rails.</li>
  <li><b>ActionCable:</b> Integração com WebSocket para comunicação em tempo real.</li>
  <li><b>Vue Router:</b> Gerenciamento de rotas no frontend.</li>
</ul>

<hr>

<h2>Pré-requisitos</h2>
<p>Antes de começar, certifique-se de ter instalado:</p>
<ul>
  <li><b>Ruby</b> (versão 3.x.x ou superior)</li>
  <li><b>Rails</b> (versão 7.x.x ou superior)</li>
  <li><b>Node.js</b> (versão 16.x.x ou superior)</li>
  <li><b>Vue CLI</b> (versão 5.x.x ou superior)</li>
  <li><b>PostgreSQL</b></li>
  <li><b>Redis</b> (para ActionCable e Sidekiq)</li>
</ul>

<hr>

<h2>Configuração do Projeto</h2>
<h4>Backend (Rails API)</h4>

1. **Clone o repositório**:
   ```
   git clone https://github.com/seu-usuario/message-app.git
   cd message-app/backend
   ```

2. **Instale as dependências**:
   ```
   bundle install
   ```

3. **Configure o banco de dados**:
   - Crie o banco de dados:
     ```
     rails db:create
     ```
   - Execute as migrações:
     ```
     rails db:migrate
     ```
   - (Opcional) Popule o banco de dados com dados iniciais:
     ```
     rails db:seed
     ```

4. **Configure o Redis**:
   - Certifique-se de que o Redis está rodando localmente na porta padrão (`6379`).

5. **Inicie o servidor Rails**:
   ```
   rails server
   ```
   O servidor estará disponível em `http://localhost:3000`.

<h4>Frontend (Vue.js)</h4>

1. **Navegue até a pasta do frontend**:
   ```
   cd ../frontend
   ```

2. **Instale as dependências**:
   ```
   yarn install
   ```

3. **Inicie o servidor de desenvolvimento**:
   ```
   yarn run dev
   ```
   O frontend estará disponível em `http://localhost:5173`.

<hr>

<h2>Como Usar</h2>
<h4>Autenticação</h4>

1. Acesse a página de login (`http://localhost:5173`).
2. Insira o email e senha de um usuário cadastrado.
3. Após o login, você será redirecionado para a página de mensagens.

<h4>Envio de Mensagens</h4>

1. Na página de mensagens, insira o conteúdo da mensagem no campo de texto.
2. (Opcional) Anexe um arquivo clicando no botão "Escolher arquivo".
3. Clique em "Enviar" para enviar a mensagem.

<h4>Visualização de Mensagens</h4>

- As mensagens enviadas e recebidas serão exibidas automaticamente na interface.
- Utilize os controles de paginação para navegar entre as páginas de mensagens.

<h4>Métricas</h4>

- Acesse o endpoint `/metrics` no backend (`http://localhost:3000/metrics`) para visualizar estatísticas sobre mensagens e usuários ativos.

<hr>

<h2>Contribuição</h2>

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`).
4. Push para a branch (`git push origin feature/nova-feature`).
5. Abra um Pull Request.

<hr>

<h2>Licença</h2>

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

<hr>

<h2>Contato</h2>

- **Autor**: Flávio de Oliveira Neto.
- **Email**: oliveiraneto.flavio2001@gmail.com.
- **LinkedIn**: www.linkedin.com/in/flávio-de-oliveira-neto. 

<hr>

<p>Este README fornece uma visão geral completa do projeto, desde a configuração até o uso das funcionalidades. Sinta-se à vontade para personalizá-lo conforme necessário!</p>
