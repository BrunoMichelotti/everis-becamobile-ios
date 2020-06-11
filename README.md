# Conclusão

**Abordagem**

   Para chegar à solução, primeiramente instalei o gerenciador de dependência e fiz uma pesquisa para saber quais versões do Alamofire e Alamofire Image funcionavam com o Swift 4.2, que utilizamos nas aulas do curso. Após configuradas as dependências, iniciei o desenvolvimento da tela “Home”. Em seguida, implementei o consumo da API e desenvolvi um callback para retornar os dados coletados da API ao controller. Realizei um estudo do retorno da API para mapear a classe Filme e DetalhesFilme. Posteriormente, desenvolvi o decodable para transformar a resposta da API em objetos da Classe Filme. Por fim, para mapear a tela, atribui a variável local e realizei um reloaddata ao final do callback.
   
   Para desenvolver a funcionalidade de listagem de detalhes, realizei a mesma abordagem a qual foi utilizada para a tela Home. Porem, após ter realizado a consulta da API de detalhes e a decodificado para objetos da classe DetalhesFilme, analisei os dados de retorno e verifiquei que as informações que seriam utilizadas para a tela de detalhes vinham em sua maioria como nulas, ficando inviável a listagem das informações necessárias para a tela de detalhes. Portanto, decidi utilizar os dados ja extraídos da API de consulta de filmes cujo estavam completos.
   
**Maior Desafio**

   O desenvolvimento do projeto em si já foi um grande desafio que fez com que o conteúdo aprendido em curso fosse posto em pratica. Entretanto, a implementação do decoder para converter a lista de filmes em objetos da classe Filme e o mapeamento das classes com o estudo do retorno da API foi o maior desafio.


# Avaliação Beca Mobile iOS

Criar um aplicativo que realize a listagem de filmes e exibição dos detalhes:
 * Tela principal, lista de filmes:
    - Listar capa dos filmes que são tendências da semana. 
 * Tela de detalhes do filme:  
    - Quando o usuário selecionar um filme, o aplicativo deve direciona-lo para uma segunda tela e exibir o título, capa, rating e sinopse. 

* API para consumo: 
  - A listagem de filmes deve ser consultada na API https://developers.themoviedb.org/3/getting-started/introduction 
    Ao se cadastrar você receberá uma chave de acesso, que deverá ser usada nas requisições. 
  - Requisição para listar as tendências https://developers.themoviedb.org/3/trending/get-trending
    - Ex.: https://api.themoviedb.org/3/trending/all/week?api_key=00000&language=pt-BR
  - Requisição para listar os detalhes https://developers.themoviedb.org/3/movies/get-movie-details
    - Ex.: https://api.themoviedb.org/3/movie/454626?api_key=00000&language=pt-BR
    
* Se opcionalmente quiser fazer o clone via SSH, segue ajuda do GitHub:
  - https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
  - Se for usar o ssh para clone, este comando ajuda a salvar a chave de forma local: 
    - ssh-add -K ~/.ssh/id_rsa
  
* Ao iniciar a avaliação:
  - Faça um fork deste projeto
  
* Mandando bem na avaliação:
  - Realize quantos commits puder, não queremos somente a solução final; queremos saber como você chegou lá. Sua evolução vale tanto quanto o resultado final.
  - A arquitetura é livre, não se procupe com isto neste momento.
  - O Design é livre, mas se tiver um tempinho... gostariamos que fizesse uma revisão final, usando as dicas da Apple:
  https://developer.apple.com/design/tips/
  - Sugestões de bibliotecas:
     - Carregamento de imagens 
       - https://github.com/Alamofire/AlamofireImage
     - Requisições:
       - Opção 1) http https://github.com/Alamofire/Alamofire
       - Opção 2) https://github.com/Moya/Moya

* Ao finalizar a avaliação:
   - Quando finalizar a implementação faça um pull request; na descrição informe qual a abordagem que você utilizou para chegar na solução, descreva também quais foram os maiores desafios para concluir a avaliação.

* :clap: Parabéns por ter chegado até aqui! :smile: _Um grande abraço e bem vindo ao time Mobile iOS_ :iphone: :punch:
