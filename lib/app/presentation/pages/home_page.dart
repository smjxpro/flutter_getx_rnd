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
          child: Text(
            'Lorem ipsum dolor sit amet...',
            style: TextStyle(
              fontSize:
                  screen.responsiveValue(mobile: 20, tablet: 30, desktop: 50),
            ),
          ),
        ),
      ),
    );
  }
}
