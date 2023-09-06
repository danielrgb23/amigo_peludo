import 'package:amigo_peludo/Screens/home/HomeScreen.dart';
import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:amigo_peludo/components/bottomNavBar.dart';
import 'package:amigo_peludo/dbTemp.dart';
import 'package:amigo_peludo/helpers/cardAnimal.dart';
import 'package:flutter/material.dart';

class Adote extends StatefulWidget {
  const Adote({Key? key}) : super(key: key);

  @override
  _AdoteState createState() => _AdoteState();
}

class _AdoteState extends State<Adote> {
  final List items = animalList;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ThemeColors.primary),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 44.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (context) {
                            return const Home(
                              page: 2,
                            );
                          }), (route) => false);
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_left_sharp,
                          size: 40,
                        ))
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Adote',
                      style: TextStyle(
                          fontFamily: 'Kalam',
                          fontSize: 48,
                          fontWeight: FontWeight.w400,
                          color: ThemeColors.bodyColor),
                    ),
                    Icon(Icons.pets)
                  ],
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return CardAnimal(
                    id: items[index]['id'],
                    image: items[index]['imageUrl'],
                    onPress: () {},
                    text: items[index]['name'],
                  );
                },
                childCount: items.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).orientation ==
                          Orientation.landscape
                      ? 3
                      : 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  childAspectRatio: .85),
            )
          ],
        ),
      ),
    );
  }
}
