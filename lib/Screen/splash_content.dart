class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your money and get the result",
    image: "assets/images/undraw_Pay_online_re_aqe6.png",
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnboardingContents(
    title: "Stay organized with team",
    image: "assets/images/undraw_Investor_update_re_qnuu.png",
    desc:
        "But understanding the contributions our colleagues make to our teams in tracking money.",
  ),
  OnboardingContents(
    title: "Get report in any format",
    image: "assets/images/undraw_Investment_data_re_sh9x.png",
    desc: "Take control of your report 24/7.",
  ),
];
