import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Data;
  const DetailScreen({super.key, required this.Data});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(widget.Data.name.toString())),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 200,
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.Data.imageurl,
                      height: 100,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                  child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.Data.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(widget.Data.review.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                       Text(widget.Data.disc.toString(),
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 104, 102, 102))),
                    ],
                  ),
                ),
              )),
              const SizedBox(height: 10,),
                       Text('${widget.Data.name.toString()} \$${widget.Data.price.toString()}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 104, 102, 102))),
            ],
          ),
        ),
      ),
    );
  }
}
