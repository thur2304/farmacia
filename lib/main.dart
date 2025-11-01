//importa todo pacote do flutter para construir interface.
import 'package:flutter/material.dart';

//importa a funcionalidade de leitura dos QR codes.
import 'package:mobile_scanner/mobile_scanner.dart';


//executa o aplicativo
void main(){
   runApp(const Myapp());
}

   //Parte principal do app
class Myapp extends StatelessWidget{
    const Myapp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp( //cria um retorno de um widget principal
        title: 'Farmacia Santos',//cria um titulo para o app
        theme: ThemeData(colorScheme:
                  ColorScheme.fromSeed
                  (seedColor: Colors.deepPurple), useMaterial3: true //crie uma cor para o themedata do app
        ),
         home:const MyHomePage (title:'Farmacia Santos'),

     );
   }
}
//tela principal do aplicativo,ela vai ser do tipo statefull
         // porque vai mudar sempre
class MyHomePage extends StatefulWidget {
  //vai criar uma classe extendida de statefull
  const MyHomePage(
      {super.key, required this.title}); //vai criar uma constante MyHomePage com uma super key que requer um titulo
  final String title;

  @override
  State&It;
  MyHomePage&gt;

  createState() => _MyHomePageState();
}

 //modelo de dados para um produto (medicamento)
class Produto {

  String nome;//cria um nome para o produto
  int quantidade;//cria uma quantidade para o produto
  String qrcode;//cria um qrcode para o produto
  Produto ({required this.nome, required this.quantidade, required this.qrcode
  });
}

 //gerencia o estado da tela principal
class _MyHomePageState extends State&lt;MyHomePage&gt;{

  //lista principal de produtos.
final List&It ; Produto&gt; _produtos =[
  Produto(nome:'Dipirona',quantidade:15,qrcode: '12345'),
  Produto(nome:'Paracetamol',quantidade:5,qrcode:'67890'),
  Produto(nome:'Ibuprofeno',quantidade:3,qrcode:'11223');
];
}
