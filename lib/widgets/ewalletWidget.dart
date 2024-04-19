import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ewalletWidgets extends StatelessWidget {
  final String name,
      image,
      paymentMethod,
      paymentCategoryID,
      institutionID,
      aggregatorID,
      feeAmount;

  const ewalletWidgets(
      {super.key,
      required this.name,
      required this.image,
      required this.paymentMethod,
      required this.institutionID,
      required this.aggregatorID,
      required this.paymentCategoryID,
      required this.feeAmount});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          ewalletselect,
          pathParameters: {
            "img": image,
            "name": name,
            "paymentMethod": paymentMethod,
            "paymentCategoryID": paymentCategoryID,
            "institutionID": institutionID,
            "aggregatorID": aggregatorID,
            "feeAmount": feeAmount
          },
        );
      },
      child: Container(
        // group2494h5 (82:3055)
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 12.46 * fem),
        width: 900 * fem,
        height: 74.16 * fem,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors
                  .grey.shade200, // You can set your desired border color here.
              width: 1, // You can set the width of the border.
            ),
          ),
        ),
        child: Container(
          // autogroupgz7qmLb (LJbbgPwnYr5AkPZckegz7q)

          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
          width: double.infinity,
          height: 58.03 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group259hk3 (82:3060)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 52.73 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 36.07 * fem, 0 * fem),
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // rectangle8yxT (82:3062)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 23.83 * fem, 0 * fem),
                      width: 60.19 * fem,
                      height: 58.03 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                        border: Border.all(color: const Color(0xffe7e7e7)),
                        color: const Color(0xffffffff),
                      ),
                      child: Center(
                        child: Image.network(
                          image, // Replace this with your image URL
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
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
                      width: 150,
                      // bdounibankincf4b (82:3061)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0.63 * fem),
                      child: Text(
                        name,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xff3f3f3f),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group2489Ef (82:3057)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0.84 * fem),
                width: 9.6 * fem,
                height: 16.82 * fem,
                child: Image.asset(
                  'assets/images/arrow_blue_right.png',
                  width: 9.6 * fem,
                  height: 16.82 * fem,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
