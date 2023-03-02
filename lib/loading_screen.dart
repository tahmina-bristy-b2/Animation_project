import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitCircle(
          size: 150,
          itemBuilder: (context, index) {
            final colors = [Colors.redAccent, Colors.amber, Colors.black];
            final color = colors[index % colors.length];

            return DecoratedBox(
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            );
          },
        ),
      ),
    );
  }
}
