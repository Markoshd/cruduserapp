# CRUD User App

Este é um aplicativo Flutter que permite realizar operações CRUD (Criar, Ler, Atualizar, Excluir) em uma lista de usuários. Ele utiliza o pacote Provider para gerenciamento de estado e se comunica com uma API RESTful para armazenar e recuperar dados de usuário.

## Primeiros Passos

Para executar o projeto localmente, siga os passos abaixo:

### Pré-requisitos

Antes de executar o projeto, certifique-se de ter o seguinte instalado em seu sistema:

- Flutter SDK
- Android Studio ou Xcode (para desenvolvimento iOS)
- Emulador Android ou Simulador iOS (ou um dispositivo físico conectado)

### Executando o Aplicativo

1. Clone o repositório para a sua máquina local:

```bash
git clone https://github.com/your-username/crud_user_app.git
```

2. Navegue para a pasta do projeto:

```bash
cd crud_user_app
```

3. Instale as dependências:

```bash
flutter pub get
```

4. Inicie o emulador ou conecte o dispositivo físico.

5. Execute o aplicativo:

```bash
flutter run
```

O aplicativo deve estar sendo executado no emulador ou dispositivo.

### Configuração da API

O aplicativo se comunica com uma API RESTful para buscar e armazenar os dados dos usuários. Antes de executar o aplicativo, certifique-se de que a API esteja configurada e funcionando corretamente. Substitua a URL base da API no arquivo `lib/providers/user_provider.dart` com a URL da sua API.

```dart
final baseUrl = 'http://your-api-url.com';
```

Substitua `http://your-api-url.com` pela URL real da sua API.

### Capturas de Tela

Inclua capturas de tela relevantes do aplicativo em diferentes estados (por exemplo, lista de usuários, formulário de usuário, etc.) no README. Você pode adicionar as capturas de tela na pasta `screenshots` e fazer um link para elas no README.

### Problemas Conhecidos

Liste quaisquer problemas conhecidos ou limitações do aplicativo, juntamente com quaisquer soluções alternativas ou planos para corrigi-los.

### Contribuições

Se você deseja contribuir para o projeto, sinta-se à vontade para enviar pull requests. Por favor, siga o estilo de código e as diretrizes do projeto ao fazer contribuições.

### Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE). Sinta-se à vontade para usar, modificar e distribuir o código para fins pessoais e comerciais. Atribuição é apreciada, mas não obrigatória.

### Contato

Se você tiver alguma dúvida ou precisar de mais assistência, sinta-se à vontade para entrar em contato com o mantenedor do projeto:

- Nome: Marcos Abreu Silva
- Email: markos.a.silva@hotmail.com
- GitHub: (https://github.com/markoshd)

