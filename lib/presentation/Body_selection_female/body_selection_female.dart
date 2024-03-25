import 'package:flutter/material.dart';
import 'package:sdgp_test01/presentation/Loading_page_3(BodyToLanding)/loading_page_3.dart';


class Bodyselectionfemale extends StatelessWidget {
  const Bodyselectionfemale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(context), // Add the AppBar here
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox( height:100),
            const Padding(
              padding: EdgeInsets.only(top: 20.0), // Adjust padding as needed
              child: Text(
                'Select a body type',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
          SizedBox(height: 50),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          // Update padding and other properties as needed
                Padding(
                    padding: const EdgeInsets.only(top: 160.0),
                    child: CustomButton(
                imagePath: 'assets/images/type1.png',
                onPressed: () => navigateToLoadingPage3(context)),
                      ),
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: CustomButton(
                      imagePath: 'assets/images/type2.png',
                      onPressed: () => navigateToLoadingPage3(context)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: CustomButton(
                      imagePath: 'assets/images/type3.png',
                      onPressed: () => navigateToLoadingPage3(context)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110.0),
                  child: CustomButton(
                      imagePath: 'assets/images/type4.png',
                      onPressed: () => navigateToLoadingPage3(context)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160.0),
                  child: CustomButton(
                      imagePath: 'assets/images/type5.png',
                      onPressed: () => navigateToLoadingPage3(context)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void navigateToLoadingPage3(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Loading_page_3()),
  );
}
PreferredSizeWidget _buildAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Image.asset('assets/images/Line arrow-left.png'), // Replace with your actual arrow image asset path
      onPressed: () {
        Navigator.of(context).pop();
      },
    ), // Replace with your screen's title
    // You can add more AppBar properties if needed
  );
}

class CustomButton extends StatefulWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const CustomButton({required this.imagePath, required this.onPressed, Key? key})
      : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
        widget.onPressed();
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: isPressed ?  Colors.grey:Colors.white,
        side:const BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      child: Column(
        children: [
          Image.asset(widget.imagePath, width: 50.0, height: 160.0, fit: BoxFit.cover),
        ],
      ),
    );
  }
}
