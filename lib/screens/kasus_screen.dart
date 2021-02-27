import '../api_prov/controller_prov.dart';
import '../api_prov/model_prov.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: FutureBuilder(
      //     future: _getPost.manggilPostData(),
      //     builder: (context, AsyncSnapshot<List<Post>> snapshot) {
      //       if (snapshot.hasData) {
      //         List<Post> dataPost = snapshot.data;
      //         return new ListView.builder(
      //           padding: const EdgeInsets.all(16),
      //           itemCount: dataPost.length,
      //           itemBuilder: (context, index) {
      //             return Container(
      //               height: 130,
      //               child: Card(
      //                 color: Colors.blue,
      //                 elevation: 10,
      //                 child: Row(
      //                   children: <Widget>[
      //                     Padding(
      //                       padding: EdgeInsets.all(10.0),
      //                       child: GestureDetector(
      //                         onTap: () {},
      //                         child: Container(
      //                           width: 100.0,
      //                           height: 100.0,
      //                           decoration: BoxDecoration(
      //                               color: Colors.red,
      //                               image: DecorationImage(
      //                                   image: AssetImage('images/hacker.jpeg'),
      //                                   fit: BoxFit.cover),
      //                               borderRadius:
      //                                   BorderRadius.all(Radius.circular(75.0)),
      //                               boxShadow: [
      //                                 BoxShadow(
      //                                     blurRadius: 7.0, color: Colors.black)
      //                               ]),
      //                         ),
      //                       ),
      //                     ),
      //                     GestureDetector(
      //                       onTap: () {
      //                         return showDialog<void>(
      //                           context: context,
      //                           barrierDismissible: false,
      //                           builder: (BuildContext conext) {
      //                             return AlertDialog(
      //                               title: Text('Not in stock'),
      //                               content: const Text(
      //                                   'This item is no longer available'),
      //                               actions: <Widget>[
      //                                 FlatButton(
      //                                   child: Text('Ok'),
      //                                   onPressed: () {
      //                                     Navigator.of(context).pop();
      //                                   },
      //                                 ),
      //                               ],
      //                             );
      //                           },
      //                         );
      //                       },
      //                       child: Container(
      //                         child: Card(
      //                           child: Column(
      //                             children: [
      //                               Padding(
      //                                 padding: const EdgeInsets.all(5),
      //                                 child: Icon(
      //                                   Icons.android,
      //                                   size: 30,
      //                                   color: Colors.amber,
      //                                 ),
      //                               ),
      //                               Text('Negara :' + dataPost[index].Provinsi),
      //                               Text('Positif :' +
      //                                   dataPost[index].Kasus_Posi.toString()),
      //                               Text('Sembuh :' +
      //                                   dataPost[index].Kasus_Semb.toString()),
      //                               Text('Meninggal :' +
      //                                   dataPost[index].Kasus_Meni.toString())
      //                             ],
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             );
      //           },
      //         );
      //       }
      //     }),

      body: new ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return Container(
            height: 130,
            child: Card(
//                color: Colors.blue,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('assets/images/rafli.jpg'),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ]),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext conext) {
                          return AlertDialog(
                            title: Text('Not in stock'),
                            content:
                                const Text('This item is no longer available'),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Ok'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                        padding: EdgeInsets.all(30.0),
                        child: Chip(
                          label: Text('@anonymous'),
                          shadowColor: Colors.blue,
                          backgroundColor: Colors.green,
                          elevation: 10,
                          autofocus: true,
                        )),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
