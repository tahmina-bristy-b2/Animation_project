import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class FadingCubeScreen extends StatelessWidget {
  const FadingCubeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SpinKitDoubleBounce(
                  size: 90,
                  itemBuilder: (context, index) {
                    final colors = [Colors.redAccent, Colors.amber];
                    final color = colors[index % colors.length];

                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.rectangle),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SpinKitWave(
                  size: 90,
                  itemBuilder: (context, index) {
                    final colors = [
                      Colors.redAccent,
                      Colors.amber,
                      Colors.black
                    ];
                    final color = colors[index % colors.length];

                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.rectangle),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: SpinKitHourGlass(
                  size: 90,
                  color: Colors.redAccent,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SpinKitCubeGrid(
                  size: 90,
                  itemBuilder: (context, index) {
                    final colors = [Colors.redAccent, Colors.black];
                    final color = colors[index % colors.length];

                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.rectangle),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SpinKitFadingCircle(
                  size: 90,
                  itemBuilder: (context, index) {
                    final colors = [Colors.redAccent, Colors.black];
                    final color = colors[index % colors.length];

                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.rectangle),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SpinKitThreeInOut(
                  size: 90,
                  itemBuilder: (context, index) {
                    final colors = [Colors.redAccent, Colors.black];
                    final color = colors[index % colors.length];

                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.rectangle),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SpinKitRipple(
                  size: 90,
                  itemBuilder: (context, index) {
                    final colors = [Colors.redAccent, Colors.black];
                    final color = colors[index % colors.length];

                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: color, shape: BoxShape.rectangle),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
