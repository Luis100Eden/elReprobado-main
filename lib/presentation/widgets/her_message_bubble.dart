import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    //buscar el tema del contexto
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //height 10,
          //width 10,
          decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular
            (20)),
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text('Gato 0_0',
          style: TextStyle(color: Colors.white),
          ),
          ),
        ),
        const SizedBox(height: 20),
        const _ImageBubble(urlGif:'https://usagif.com/wp-content/uploads/gifs/dancing-cat-33.gif'),
        const SizedBox(height: 20)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget{
  final String urlGif;

  const _ImageBubble({required this.urlGif});
  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(urlGif,
      width: size.width*0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress)=> (loadingProgress==null)
          ? child
            :Container(
          width: size.width * 0.7,
          height: 150,
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical:
          5),
          child: const Text('cargando la imagen...'),
        )
      ),
    );
  }
}