// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:covidtracker/view/world_state.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalcases,
      totalDeaths,
      totalRecovered,
      active,
      critical,
      todayRecovered,
      test;

  DetailScreen({
    Key? key,
    required this.image,
    required this.name,
    required this.test,
    required this.totalcases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      ResuableRow(
                          title: 'Cases', value: widget.totalcases.toString()),
                      ResuableRow(
                          title: 'Deaths',
                          value: widget.totalDeaths.toString()),
                      ResuableRow(
                          title: 'Recovered',
                          value: widget.totalRecovered.toString()),
                      ResuableRow(
                          title: 'Active Cases',
                          value: widget.active.toString()),
                      ResuableRow(
                          title: 'Critical', value: widget.critical.toString()),
                      ResuableRow(
                          title: 'Total Tests', value: widget.test.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          ),
        ],
      ),
    );
  }
}
