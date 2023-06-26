import 'package:flutter/material.dart';
class Img extends StatelessWidget {
  const Img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=> OrientationBuilder(builder: (context,orientation) {
    final isPortrait = orientation == Orientation.portrait;
    // final title = 'Grid List';
    return Scaffold(
      body: GridView.count(

        crossAxisCount: isPortrait ? 2 : 3,
        children: List.generate(50, (index) {
          return Center(
            child: Column(
              children: <Widget>[

                Expanded(
                  child: Image.network(
                    'https://picsum.photos/500/500?random=$index',
                    // width: 150,
                    // height: 150,
                    fit: BoxFit.cover,


                  ),
                ),
                // Spacer(
                //   flex: 1,
                // )

              ],
            ),
          );
        }),
      ),
    );
  },  );

}


