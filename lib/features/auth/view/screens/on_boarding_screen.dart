import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../core/consts/colors.dart';
import '../../../../core/consts/strings.dart';
import '../widgets/custom_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "title": OnboardingStrings.title1,
      "desc": OnboardingStrings.desc1,
      "image": "assets/images/1.jpg",
    },
    {
      "title": OnboardingStrings.title2,
      "desc": OnboardingStrings.desc2,
      "image": "assets/images/2.jpg",
    },
    {
      "title": OnboardingStrings.title3,
      "desc": OnboardingStrings.desc3,
      "image": "assets/images/3.jpg",
    },
  ];

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _handleNextPage() {
    if (_currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // هنا سيقوم زميلك بالانتقال إلى صفحة الـ Login باستخدام الـ State Management
      // حالياً سنطبع رسالة في الـ Console

      if (kDebugMode) {
        print("Navigate to Login Screen");
      }
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              // الـ PageView لعرض محتوى الصفحات المتحركة
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: _onboardingData.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // العنوان العالي
                        Text(
                          _onboardingData[index]["title"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Tajwal',
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textDark,
                          ),
                        ),
                        const SizedBox(height: 40),
                        // الصورة التي تملكها وتتوسط الشاشة
                        Expanded(
                          child: Image.asset(
                            _onboardingData[index]["image"]!,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 40),
                        // النص الوصفي في الأسفل
                        Text(
                          _onboardingData[index]["desc"]!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: 'Tajwal',
                            fontSize: 16,
                            color: AppColors.textSecondary,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    );
                  },
                ),
              ),

              // مؤشر النقاط السفلي (Dots Indicator)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _onboardingData.length,
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

              // زر الاستمرار الثابت في الأسفل
              CustomButton(
                text: OnboardingStrings.buttonText,
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
