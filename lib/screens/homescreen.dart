import 'package:flutter/material.dart';
import 'package:cunclt_project/screens/loginscreen.dart';
import 'package:cunclt_project/screens/colors.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);
  static const String id = 'Homescreen';

  @override
  State<Homescreen> createState() => _HomePageState();
}

class _HomePageState extends State<Homescreen> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "https://as2.ftcdn.net/v2/jpg/01/11/62/93/1000_F_111629342_JBMV6pTjwyuc2SguFqwEcE74Uhc42ZEB.jpg",
    "https://as2.ftcdn.net/v2/jpg/02/09/62/05/1000_F_209620522_7dxjU0gbWLSOmwo5YYlLsUI3EDusqclo.jpg",
    "https://as1.ftcdn.net/v2/jpg/02/52/61/96/1000_F_252619608_dr1hmvLD4pIn3ZtU4LpMAm0wzZxYqjZK.jpg",
    "https://as2.ftcdn.net/v2/jpg/01/16/97/69/1000_F_116976944_Rs2UDvJyKbm6j6gU5Lwwe7UfJjGHKDib.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: GradientText(
          'CUNSLT',
          style: const TextStyle(fontSize: 20),
          gradientDirection: GradientDirection.ttb,
          colors: const [CustomColorsNew.textAccent, CustomColorsNew.textBlue],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Hello,',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'To CUNSLT APP',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: 300,
                width: double.infinity,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index % images.length;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Image.network(
                          images[index % images.length],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (var i = 0; i < images.length; i++)
                    buildIndicator(currentIndex == i)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.jumpToPage(currentIndex - 1);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.jumpToPage(currentIndex + 1);
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  '"We Provide pragmatic solutions for the future"',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Center(
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.fromLTRB(60, 10, 60, 10),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(
                          color: Colors.black,
                        )),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 14 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black87 : Colors.blueGrey,
        ),
      ),
    );
  }
}
