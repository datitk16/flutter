import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var stars = Row();

    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
          ),
          body: Center(
            child: _buildImageColumn(),
          ),
        ));
  }

  Widget _buildImageColumn() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      child: Column(
        children: [_buildImagesRow(1), _buildImagesRow(2), _buildImagesRow(3)],
      ),
    );
  }

  Widget _buildImagesRow(int imageIndex) => Row(
        children: [
          _buildDecoratedImage(imageIndex),
          _buildDecoratedImage(imageIndex)
        ],
      );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 10, color: Colors.black38),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset('images/pic$imageIndex.jpg'),
        ),
      );
}
