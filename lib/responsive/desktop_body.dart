import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        backgroundColor: Colors.deepPurple[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // first column: video and comments
            Expanded(
              child: Column(
                children: [
                  // video
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        height: 250,
                        color: Colors.deepPurple[400],
                      ),
                    ),
                  ),

                  // comments section
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.deepPurple[300],
                              height: 120,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // second column: recommended videos
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 200,
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        color: Colors.deepPurple[300],
                        height: 150,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
