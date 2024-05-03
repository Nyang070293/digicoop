import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bankWidgets extends StatelessWidget {
  final String name, image;
  const bankWidgets({super.key, required this.name, required this.image});

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
            // group133GPy (87:5428)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
            width: 70 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35 * fem),
            ),
            child: Center(
              // rectangle2CoR (87:5429)
              child: SizedBox(
                width: double.infinity,
                height: 70 * fem,
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
          ),
          Container(
            // unionbankJLf (87:5427)
            margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              name,
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 13 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff4f4f4f),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
