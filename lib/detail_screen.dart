import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_application/models/tourism_place.dart';

// var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  // final TourismPlace place;

  // const DetailScreen({Key? key, required this.place}) : super(key: key);
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300, // Tentukan tinggi container
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage('images/database2.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Embended System",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(children: [
                            Icon(Icons.person_3),
                            Text("Ibu In"),
                          ],),
                          SizedBox(height: 15),

                          Text(
                            "Deskripsi",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Mata kuliah ini mempelajari tentang sistem basis data, yaitu bagaimana cara merancang, mengimplementasikan, dan mengelola basis data. Mahasiswa akan belajar tentang berbagai model basis data seperti relasional, NoSQL, dan distribusi data. Fokus utama adalah pada bahasa SQL dan teknik optimasi query.",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),


        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: <Widget>[
        //     Stack(
        //       children: <Widget>[
        //         Image.asset(place.imageAsset),
        //         SafeArea(
        //           child: Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 CircleAvatar(
        //                   backgroundColor: Colors.grey,
        //                   child: IconButton(
        //                     icon: const Icon(
        //                       Icons.arrow_back,
        //                       color: Colors.white,
        //                     ),
        //                     onPressed: () {
        //                       Navigator.pop(context);
        //                     },
        //                   ),
        //                 ),
        //                 const FavoriteButton(),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //     Container(
        //       margin: const EdgeInsets.only(top: 16.0),
        //       child: Text(
        //         place.name,
        //         textAlign: TextAlign.center,
        //         style: const TextStyle(
        //           fontSize: 30.0,
        //           fontFamily: 'Staatliches',
        //         ),
        //       ),
        //     ),
        //     Container(
        //       margin: const EdgeInsets.symmetric(vertical: 16.0),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: <Widget>[
        //           Column(
        //             children: <Widget>[
        //               const Icon(Icons.calendar_today),
        //               const SizedBox(height: 8.0),
        //               Text(
        //                 place.openDays,
        //                 style: informationTextStyle,
        //               ),
        //             ],
        //           ),
        //           Column(
        //             children: <Widget>[
        //               const Icon(Icons.access_time),
        //               const SizedBox(height: 8.0),
        //               Text(
        //                 place.openTime,
        //                 style: informationTextStyle,
        //               ),
        //             ],
        //           ),
        //           Column(
        //             children: <Widget>[
        //               const Icon(Icons.monetization_on),
        //               const SizedBox(height: 8.0),
        //               Text(
        //                 place.ticketPrice,
        //                 style: informationTextStyle,
        //               ),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Text(
        //         place.description,
        //         textAlign: TextAlign.center,
        //         style: const TextStyle(
        //           fontSize: 16.0,
        //           fontFamily: 'Oxygen',
        //         ),
        //       ),
        //     ),
        //     SizedBox(
        //       height: 150,
        //       child: ListView(
        //         scrollDirection: Axis.horizontal,
        //         children: place.imageUrls.map((url) {
        //           return Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: ClipRRect(
        //               borderRadius: BorderRadius.circular(10),
        //               child: Image.network(url),
        //             ),
        //           );
        //         }).toList(),
        //       ),
        //     ),
        //   ],
        // ),
      // ),
    );
  }
}
