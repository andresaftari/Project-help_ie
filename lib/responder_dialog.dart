import 'package:flutter/material.dart';

class ResponderDialog extends StatefulWidget {
  const ResponderDialog({Key? key}) : super(key: key);

  @override
  _ResponderDialogState createState() => _ResponderDialogState();
}

class _ResponderDialogState extends State<ResponderDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 450),
    );
    scaleAnimation = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticInOut,
    );

    controller.addListener(() => setState(() {}));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Pilih Responder',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          //--- DIALOG BUTTON POLISI ---//
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              primary: const Color.fromRGBO(229, 229, 229, 100),
              onPrimary: Colors.green[300],
            ),
            onPressed: () {},
            child: const Text(
              'Polisi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),

          //--- DIALOG BUTTON PEMADAM KEBAKARAN ---//
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              primary: const Color.fromRGBO(229, 229, 229, 100),
              onPrimary: Colors.red[300],
            ),
            onPressed: () {},
            child: const Text(
              'Pemadam Kebakaran',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),

          //--- DIALOG BUTTON AMBULANCE ---//
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20.0),
              primary: const Color.fromRGBO(229, 229, 229, 100),
              onPrimary: Colors.blue[300],
            ),
            onPressed: () {},
            child: const Text(
              'Ambulance',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
