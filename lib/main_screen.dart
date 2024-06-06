import 'package:flutter/material.dart';
import 'package:flutter_application/detail_screen.dart';
import 'package:flutter_application/models/mata_kuliah.dart';
import 'package:flutter_application/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // App Bar
      appBar: AppBar(
        title: const Text('Mata Kuliah'),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(10),
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),

      // Body
      body: ListView.builder(
        itemBuilder: (context, index) {

          final MataKuliah matkul = mataKuliahList[index];

          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(matkul: matkul);
              }));
            },

            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(matkul.imageCover),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            matkul.nama,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(children: [
                            Icon(Icons.person_3),
                            Text(matkul.dosen),
                          ],),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            matkul.deskripsiSingkat,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),            
          );
        },
        itemCount: mataKuliahList.length,
      ),
    );
  }
}