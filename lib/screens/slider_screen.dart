import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _isSliderDisabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Slider Screen'),
          ),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 400,
              value: _sliderValue,
              onChanged: _isSliderDisabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Disable Slider'),
              value: _isSliderDisabled,
              onChanged: (value) {
                _isSliderDisabled = value ?? true;
                setState(() {});
              },
            ),
            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Disable Slider'),
              value: _isSliderDisabled,
              onChanged: (value) {
                _isSliderDisabled = value;
                setState(() {});
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/studioghibli/images/d/d4/Studio_Ghibli.png/revision/latest/scale-to-width-down/1000?cb=20200410033324&path-prefix=es'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
