import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.isVisable,
  });
  final String image, backgroundImage, subTitle;
  final Widget title;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisable,
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('تخطي'),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 64),
        title,
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
