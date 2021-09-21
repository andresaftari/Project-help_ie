import 'package:flutter/material.dart';
import 'package:help_ie/responder_dialog.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //--- BUTTON EMERGENCY ---//
              ElevatedButton(
                child: const Icon(
                  Icons.warning,
                  color: Colors.redAccent,
                  size: 100.0,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: const CircleBorder(),
                  fixedSize: const Size(300.0, 300.0),
                  onPrimary: Colors.red[300],
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => const ResponderDialog(),
                  );
                },
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
          ),

          //--- BUTTON FAMILY CALL ---//
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Family Call',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              fixedSize: const Size(200.0, 50.0),
              onPrimary: Colors.red[300],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      );
}
