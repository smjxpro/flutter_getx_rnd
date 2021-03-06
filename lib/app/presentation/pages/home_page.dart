import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetResponsiveView {
  builder() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Center(
          child: Container(
            color: Colors.green,
            child: Column(
              children: [
                Text(
                  'A column takes the full height of the parent by default. This green portion is a column.',
                  style: TextStyle(
                    fontSize: screen.responsiveValue(
                        mobile: 20, tablet: 30, desktop: 50),
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Text(
                    'A text widget only takes as much height and width as the content needs. This red portion is a text widget.',
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'A row takes the full width of the parent by default. This yellow portion is a row. This text widget has the possibility of being overflowed horizontally without the expanded widget.',
                          style: TextStyle(
                            fontSize: screen.responsiveValue(
                                mobile: 20, tablet: 30, desktop: 50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.indigoAccent,
                  height: 200,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.amber,
                          height: 100,
                          width: 300,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 150,
                          width: 150,
                          color: Colors.pinkAccent,
                          child: Text(
                              'Stack gets the full height and width of it\'s parent and lays out children in LIFO manner. ie: the last child sits on top of other child'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
