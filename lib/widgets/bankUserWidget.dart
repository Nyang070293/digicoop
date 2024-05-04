import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bankUserWidgets extends StatelessWidget {
  final String name, image;
  const bankUserWidgets({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // group135wMh (87:5426)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 13 * fem, 0 * fem),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(10 * fem, 16 * fem, 0 * fem, 0 * fem),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: RawMaterialButton(
              onPressed: () {
                // Add your button's onPressed action here
                // gotoBannkSearch();
              },
              elevation: 2.0,
              fillColor: Colors.white,
              padding: const EdgeInsets.all(15.0),
              shape: const CircleBorder(),
              child: Image.network(
                image, // Replace this with your image URL
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return const Text('Error loading image');
                },
              ),
            ),
          ),
          Container(
            // unionbankJLf (87:5427)
            margin: EdgeInsets.fromLTRB(10 * fem, 15 * fem, 0 * fem, 0 * fem),
            child: Text(
              name,
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 14 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff231f20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
