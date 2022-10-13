

# Viver de Teste 2.ª Temporada



# Trade Sticker
Projeto em Robot Framework construído na 2a temporada da serie viver de teste da QAcademy.

Foi realizado um projeto de Testes Automatizados para a aplicação web Trade Sticker (troca de figurinhas)

## 🔖 Requisitos funcionais

### Pagina
- [X] Deve validar o slogan da home page

### Login 
- [X] Deve logar com sucesso
- [X] Não deve logar com senha incorreta
- [ ] Deve exibir notificacao toaster se a senha nao for preenchida
- [ ] Deve exibir notificacao toaster se o email nao for preenchido
- [ ] Deve exibir notiticacao toaster se email e senha nao forem preenchidos

### Troca
- [X] Deve negociar a figurinha ...

## 🚀 Tecnologias
- [Robot Framework] - para a escrita dos testes automatizados
- [Python] - para a instalação e execução do projeto
- [Biblioteca Browser]- Playwright

## 👨🏻‍💻 Como executar o projeto
[Node.js](https://nodejs.org/) v16 ou superior para executar.

Execute os comandos abaixo para instalar das dependências do projeto e execução dos testes:
```sh
cd vtd2
cd trade-sticker
robot -d ./logs -v BROWSER:firefox tests/

```

