library mountain_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class MountainImages extends StatefulWidget {
  const MountainImages({super.key});

  @override
  State<MountainImages> createState() => _MountainImagesState();
}

class _MountainImagesState extends State<MountainImages> {

  List<String> imgUrls =[
    "https://images.unsplash.com/34/BA1yLjNnQCI1yisIZGEi_2013-07-16_1922_IMG_9873.jpg?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1485160497022-3e09382fb310?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://plus.unsplash.com/premium_photo-1673859054724-d3ce699da39d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: imgUrls.length,
    itemBuilder: (context,index,pageViewInde){
          return Container(child: Image.network(imgUrls.elementAt(index)),);
    },
    options: CarouselOptions(autoPlay:true),
      ),
    );
  }
}
