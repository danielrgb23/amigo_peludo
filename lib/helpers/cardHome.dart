import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardHome extends StatefulWidget {
  final Color color;
  final bool isRight;
  final String textTitle;
  final String textContent;
  final ImageProvider image;
  final VoidCallback onPress;

  const CardHome({
    Key? key,
    required this.color,
    required this.isRight,
    required this.image,
    required this.textTitle,
    required this.textContent,
    required this.onPress,
  }) : super(key: key);

  @override
  _CardHomeState createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      onTap: widget.onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text(
                  widget.textTitle,
                  style: const TextStyle(
                      color: ThemeColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: widget.isRight
                  ? Padding(
                      padding: const EdgeInsets.only(left: 11.0, right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.textContent,
                            style: const TextStyle(
                              color: ThemeColors.textColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                          Image(
                            image: widget.image,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 11.0, right: 11),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: widget.image,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            widget.textContent,
                            style: const TextStyle(
                              color: ThemeColors.textColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ))
        ],
      ),
    );
  }
}
