import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      spacing: 300,
                      children: [
                        Image.network(
                          'https://render.fineartamerica.com/images/rendered/search/metal-print/8/6.5/break/images/artworkimages/medium/2/abstract-editable-vector-background-of-robert-adrian-hillman.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/3/random-harvest-with-ronald-colman-and-greer-garson-1942-stars-on-art.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/keith-richards-caricature-fb-newsfeed-debora-lewis.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.network(
                          'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/keith-richards-caricature-fb-newsfeed-debora-lewis.jpg',
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 20,
                        ),


                      ],
                    ),
                  )
                ],
              ),
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Wrap(
                        spacing: 300,
                        children: [
                          Image.network(
                            'https://render.fineartamerica.com/images/rendered/search/metal-print/8/6.5/break/images/artworkimages/medium/2/abstract-editable-vector-background-of-robert-adrian-hillman.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/3/random-harvest-with-ronald-colman-and-greer-garson-1942-stars-on-art.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/keith-richards-caricature-fb-newsfeed-debora-lewis.jpg',
                            height: 150,
                            width: 150,
                          ),
                          Image.network(
                            'https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/keith-richards-caricature-fb-newsfeed-debora-lewis.jpg',
                            height: 150,
                            width: 150,
                          ),


                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
