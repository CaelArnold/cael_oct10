/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<PositionData>(
      create: (context) => PositionData(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PositionSliderPage(),
      ),
    ),
  );
}

class PositionData extends ChangeNotifier {
  double _horizontal = 0.5;
  double _vertical = 0.5;

  double get horizontal => _horizontal;
  double get vertical => _vertical;

  set horizontal(double newHorizontal) {
    _horizontal = newHorizontal.clamp(0.0, 1.0);
    notifyListeners();
  }

  set vertical(double newVertical) {
    _vertical = newVertical.clamp(0.0, 1.0);
    notifyListeners();
  }
}

class PositionSliderPage extends StatelessWidget {
  const PositionSliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double widgetSize = 120.0;
    const double paddingValue = 20.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Position Controller'),
        elevation: 2,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Define boundaries
          final double containerWidth =
              constraints.maxWidth - (paddingValue * 2);
          final double containerHeight =
              constraints.maxHeight -
              (paddingValue * 2) -
              150.0; // Reserve space for controls

          return Consumer<PositionData>(
            builder: (context, data, child) {
              // Calculate available movement range for the widget
              final double maxRangeX = containerWidth - widgetSize;
              final double maxRangeY =
                  containerHeight - 60.0; // 60 approx height of text box

              return Stack(
                children: [
                  // Area Boundary
                  Positioned(
                    left: paddingValue,
                    top: paddingValue,
                    width: containerWidth,
                    height: containerHeight + 16,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor
                              .withValues(alpha: 0.5),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),

                  // Interactive Widget
                  Positioned(
                    left:
                        paddingValue +
                        (data.horizontal * (maxRangeX > 0 ? maxRangeX : 0)),
                    top:
                        paddingValue +
                        (data.vertical * (maxRangeY > 0 ? maxRangeY : 0)),
                    child: GestureDetector(
                      onPanUpdate: (details) {
                        if (maxRangeX > 0) {
                          data.horizontal += details.delta.dx / maxRangeX;
                        }
                        if (maxRangeY > 0) {
                          data.vertical += details.delta.dy / maxRangeY;
                        }
                      },
                      child: Container(
                        width: widgetSize,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Text(
                          'H: ${(data.horizontal * 100).toInt()}%\nV: ${(data.vertical * 100).toInt()}%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
*/