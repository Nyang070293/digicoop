// import 'package:digicoop/page/Login/login.dart';
// import 'package:digicoop/util/utils.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_pin_code_widget/flutter_pin_code_widget.dart';
import 'package:go_router/go_router.dart';

class mpinScreen extends ConsumerStatefulWidget {
  const mpinScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<mpinScreen> createState() => _mpinScreenState();
}

class _mpinScreenState extends ConsumerState<mpinScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xff259ded),
      body: Container(
        color: Color(0xff259ded),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Text(
                'Set up PIN',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 20),
              const Text('You can use this PIN to unlock the app..'),
              const Text('Pin length is 4-25 digits'),
              const SizedBox(height: 60),
              Expanded(
                child: PinCodeWidget(
                  minPinLength: 6,
                  maxPinLength: 6,
                  buttonColor: Colors.blue,
                  deleteButtonColor: Colors.blue,
                  onChangedPin: (pin) {
                    // check the PIN length and check different PINs with 4,5.. length.
                  },
                  onEnter: (pin, _) {
                    // callback user pressed enter
                  },
                  centerBottomWidget: InkWell(
                    onTap: () {
                      // Handle tap action here
                      context.pushReplacementNamed(login);
                    },
                    child: Text(
                      // loginviapasswordCnK (41:6763)
                      'Login via Password',
                      textAlign: TextAlign.right,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
