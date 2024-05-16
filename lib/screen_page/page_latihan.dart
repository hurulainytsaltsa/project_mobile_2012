import 'package:flutter/material.dart';
import 'package:project_mobile/screen_page/page_kamera.dart';
import 'package:project_mobile/screen_page/page_maps.dart';

class PageLatihan2 extends StatelessWidget {
  const PageLatihan2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AksesKamera(),
                  ),
                );
              },
              child: Text(
                'Akses Kamera',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapsFlutter(),
                  ),
                );
              },
              child: Text(
                'Google Maps',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
