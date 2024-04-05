import 'package:crypto_1/Screen/detail_scre.dart';
import 'package:flutter/material.dart';
import '../Models/uimodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: UiModel.uiData.length,
                itemBuilder: (context, index) {
                  final item = UiModel.uiData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(Data: item)));
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                                item.imageurl), // Use image from UiModel
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey[200]!.withOpacity(0.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item.name, // Use name from UiModel
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(item.review.toString()),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
