import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_diagnostic_app1/core/navigation/route_paths.dart';
import '../../../../core/theme/colors.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import '../../../../core/widgets/language_dropdown.dart';
import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> _onboardingImages = [
    "assets/images/1-nobg.png",
    "assets/images/2-nobg.png",
    "assets/images/3-nobg.png",
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _handleNextPage() {
    if (_currentPage < _onboardingImages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.pushNamed(RoutePaths.login);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final titles = [
      S.of(context).onboardingTitle1,
      S.of(context).onboardingTitle2,
      S.of(context).onboardingTitle3,
    ];
    final descs = [
      S.of(context).onboardingDesc1,
      S.of(context).onboardingDesc2,
      S.of(context).onboardingDesc3,
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          LanguageDropdown(),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 2.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _onboardingImages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          titles[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Tajwal',
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            // color: AppColors.textDark,
                          ),
                        ),
                        const SizedBox(height: 40),

                        Expanded(
                          child: Image.asset(
                            _onboardingImages[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 40),

                        Text(
                          descs[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Tajwal',
                            fontSize: 16,
                            // color: AppColors.textSecondary,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _onboardingImages.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 4.0),
                    height: 8,
                    width: _currentPage == index
                        ? 24
                        : 8, // استطالة خفيفة للنقطة النشطة
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? AppColors.dotActive
                          : AppColors.dotInactive,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              CustomButton(
                text: S.of(context).onboardingButton,
                onPressed: _handleNextPage,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
