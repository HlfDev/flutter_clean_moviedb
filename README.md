<h1 align="center">MovieDB</h1>
<p align="center">
  Esse projeto é um clone do layout da tela de detalhe dos filmes do app <a href="[url](https://apps.apple.com/br/app/todomovies-4/id792499896)"> TodoMovies4 </a>, utilizando a API do <a href="https://www.themoviedb.org/?language=pt-BR">The Movie DB</a> para obter as informações dos filmes, e usando Clean Architecture para estrutura.
</p>
<br>
<h1 align="center">Layout</h1>
<div align="center">
<img src=".github/wallpaper.png"/>
</div>
<br>
<h1 align="center"> Packages - <a href="https://pub.dev/">pub.dev</a></h1>
  <ul>
  <li>dartz: ^0.10.0</li>
  <li>mobx: ^2.0.4</li>
  <li>flutter_mobx: ^2.0.2</li>
  <li>equatable: ^2.0.3</li>
  <li>dio: ^4.0.0</li>
  <li>mocktail: ^0.1.4</li>
  <li>flutter_dotenv: ^5.0.2</li>
  <li>google_fonts: ^2.1.0</li>
  </ul>

<br>
<h1 align="center"> Como utilizar </h1>


   - Crie um clone desse repositório:
   $ git clone https://github.com/HlfDev/moviedb.git

   - Entre no diretório:
   $ cd moviedb

   - Instale as dependências:
   $ flutter pub get

   - Dentro da pasta raiz é necessario criar um arquivo para salvar a variavel de ambiente, no caso só vai ser inserido a chave de acesso do The MovieDB, então crie um arquivo chamado .env:

   - Nesse arquivo coloque a variavel: API_KEY = "{SUA API KEY}" 
  
   - Em seguida substitua o que está entre chaves pela sua API KEY do The Movie DB.

   - Inicie o app: 
   $ flutter run

<br>
<p align=center> Você pode obter a API_KEY do The Movie DB aqui: <a href="https://developers.themoviedb.org/3/getting-started/introduction"> The MovieDB API </a></p>
