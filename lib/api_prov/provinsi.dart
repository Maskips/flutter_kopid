import 'package:project_pkl/api_prov/provinsi.dart';
import '../api_prov/controller_prov.dart';
import '../api_prov/model_prov.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  final GetPost _getPost = new GetPost();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data dari API'),
      ),
      body: FutureBuilder(
          future: _getPost.manggilPostData(),
          // ignore: missing_return
          builder: (context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> dataPost = snapshot.data;

              return ListView.builder(
                itemCount: dataPost.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              Icons.android,
                              size: 30,
                              color: Colors.amber,
                            ),
                          ),
                          Text('Negara :' + dataPost[index].Provinsi),
                          Text('Positif :' +
                              dataPost[index].Kasus_Posi.toString()),
                          Text('Sembuh :' +
                              dataPost[index].Kasus_Semb.toString()),
                          Text('Meninggal :' +
                              dataPost[index].Kasus_Meni.toString())
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          }),
    );
  }
}
