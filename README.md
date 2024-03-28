# Custom Splash Screen

## Description

A customizable splash screen widget that allows you to integrate animations (Rive format), logos (SVG format), and text for a visually appealing app startup experience. It adapts to the user's app theme and provides a flexible way to showcase your brand identity during launch.


## Author

**Sconl Peter**
- GitHub: https://github.com/Sconl
- Email: sconl@proton.me


## Table of Contents

1. Installation
2. Usage
3. Contributing
4. Tests
5. License


## Installation

Here are the instructions for how to install and use my project.

```bash
git clone git@github.com:Sconl/custom_splash_screen.git
cd your-repo
npm install 

```

## Usage

In your main.dart file, 

import 

```bash
import 'package:custom_splash_screen/custom_splash_screen.dart';
```
then update

```bash
return CustomSplashScreen(
    // Replace with your rive animation path
    riveAsset: 'assets/animations/my_animation.riv',
    // Replace with your svg logo path
    svgLogoPath: 'assets/images/my_logo.svg',
    // Replace with your desired text);
    text: 'Crevify');
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Tests

Here is how you can run tests on the project 


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
