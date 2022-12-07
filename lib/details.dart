import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.archive_outlined),
          SizedBox(width: 20),
          Icon(Icons.delete_outlined),
          SizedBox(width: 20),
          Icon(Icons.mail_outline),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Congratulations on second \n interview round",
                          maxLines: 15,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.star_outline_outlined),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.blueAccent,
                          radius: 25.0,
                          child: ClipRRect(
                            //borderRadius:BorderRadius.circular(50),
                            child: Text(
                              "J",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Joining",
                        ),
                        SizedBox(width: 150),
                        Icon(Icons.reply),
                        SizedBox(width: 10),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Hi Gogul, \n \nGood morning \n \nI hope you are doing well. \n \nCongratulations you have been selected for the second round of interview. \n \nThe interview will be conducted on Google meet on Wednesday 7th December 2022 at 11 am IST .\n \n \nHere is the link for the interview \n \nTo join the video meeting, click on this link: \n \nmeet.google.com/gjs-cohw-kne \n \nTo join by phone instead, dial (AU) +61 2 9051 3274 and enter this PIN: 130 485 384# \n \nMore phone numbers: https://tel.meet/gjs-cohw-kne?pin=1913713292757 \n \nPlease choose an environment which is silent and has decent internet connection with good audio and video clarity. Familiarise yourself with the Google meet application to prevent last moment hassle.\nMeanwhile, Can I know your current salary please? \n \n \n \nRegards, \nAmarjeet Sandhu",
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
