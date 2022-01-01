import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: const Color(0xFF071122),
          automaticallyImplyLeading: false,
          leading: const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
            child: Text(
              '_ Hi, Nora',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          flexibleSpace: const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 90, 10, 10),
            child: Text(
              'Find and Locate Your Best  Here',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFFF7F4F4),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 22, 20),
              child: Icon(
                Icons.notifications,
                color: Color(0xFFF7F4F4),
                size: 24,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          scrollDirection: Axis.vertical,
          children: [
            Image.network(
              'https://picsum.photos/seed/838/600',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const Text(
              'Hello WoNature is part of our life. We grew out of the seed, the earth, and we are part of all that, but we are rapidly losing the sense that we are animals like the others. ',
              style: TextStyle(),
            ),
            const Text(
              'Nature is part of our life. We grew out of the seed, the earth, and we are part of all that, but we are rapidly losing the sense that we are animals like the others.  ',
              style: TextStyle(),
            ),
            Image.network(
              'https://picsum.photos/seed/529/600',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Image.network(
              'https://picsum.photos/seed/538/600',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const Text(
              'Nature is part of our life. We grew out of the seed, the earth, and we are part of all that, but we are rapidly losing the sense that we are animals like the others. ',
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
