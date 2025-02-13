import 'package:brighter_tomorrow/widgets/display_box.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    'images/home_1.png',
    'images/home_2.png',
    'images/home_3.png',
    'images/home_4.png'
  ];

  bool _imagesLoaded = false;
  late CarouselSliderController? buttonCarouselController;

  @override
  void initState() {
    super.initState();
    buttonCarouselController = CarouselSliderController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_imagesLoaded) {
      _imagesLoaded = true;
      for (var image in imageList) {
        precacheImage(AssetImage(image), context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.sizeOf(context).width;
    final mediaHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kColor.withValues(alpha: 0.6),
                kColor,
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'images/2.png',
                    fit: BoxFit.contain,
                    height: 400.0,
                  )
                      .animate()
                      .slide(duration: const Duration(seconds: 3))
                      .fade(duration: const Duration(seconds: 3)),
                  DisplayBox(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          'Welcome to Brighter Tomorrow Exercise Physiology, a '
                          'service started by Jas and Josh Morrow to offer high '
                          'quality, personalised Exercise Physiology in the Albury/'
                          'Wodonga area.\n\n'
                          'At Brighter Tomorrow we prioritise our relationships with '
                          'our clients because we genuinely care about what we do, '
                          'and the outcomes you get. We know the journey towards a '
                          'brighter tomorrow can be tough, and that is why we will '
                          'empower, educate and guide you safely the whole way. \n\n'
                          'Our number one goal is to support our clients to get the '
                          'very best out of life. Whether that means feeling more '
                          'confident in your ability to get up and down out of a '
                          'chair, or you are striving for success at elite level in '
                          'sports, we provide a thoughtful and tailored '
                          'approach.',
                          style: GoogleFonts.newsreader(
                            textStyle: bodyStyle,
                          ),
                        ).animate(delay: const Duration(seconds: 1))
                          ..slide(
                                  duration: const Duration(seconds: 3),
                                  begin: const Offset(0, 0.5),
                                  end: const Offset(0, 0))
                              .fade(
                            duration: const Duration(seconds: 3),
                          ),
                      ),
                      CarouselSlider.builder(
                        itemCount: imageList.length,
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
                          return ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: 800,
                              minWidth: mediaWidth < 800 ? mediaWidth : 800,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(32),
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: ClipRRect(
                                        borderRadius: BorderRadius.circular(24),
                                        child: Image.asset(
                                          imageList[index],
                                          height: mediaHeight < mediaWidth
                                              ? 600
                                              : null,
                                          fit: BoxFit.contain,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Container(
                                              color: Colors.grey[200],
                                              child: const Center(
                                                child: Text('Image not found'),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      titlePadding: const EdgeInsets.all(0),
                                    ),
                                  );
                                },
                                child: Image.asset(
                                  imageList[index],
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.grey[200],
                                      child: const Center(
                                        child: Text('Image not found'),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          viewportFraction: 0.75,
                          aspectRatio: 16 / 9,
                          height: mediaWidth < 750 ? null : 500,
                        ),
                      ).animate(delay: const Duration(seconds: 1))
                        ..slideX(
                                duration: const Duration(seconds: 3),
                                begin: 0.5,
                                end: 0)
                            .fade(
                          duration: const Duration(seconds: 3),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  const Color.fromRGBO(158, 162, 138, 1),
                                ),
                              ),
                              onPressed: () =>
                                  buttonCarouselController?.previousPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.linear),
                              child: const Text(
                                '←',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 16),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  const Color.fromRGBO(158, 162, 138, 1),
                                ),
                              ),
                              onPressed: () =>
                                  buttonCarouselController?.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.linear),
                              child: const Text(
                                '→',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ).animate(delay: const Duration(seconds: 1))
                          ..slideX(
                                  duration: const Duration(seconds: 3),
                                  begin: 0.5,
                                  end: 0)
                              .fade(
                            duration: const Duration(seconds: 3),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
