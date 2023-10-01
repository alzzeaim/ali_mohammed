import 'package:flutter/material.dart';

class VideoSeries extends StatefulWidget {
  const VideoSeries({super.key});

  @override
  State<VideoSeries> createState() => _VideoSeriesState();
}

class _VideoSeriesState extends State<VideoSeries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("video_series"),
      ),
    );
  }
}
