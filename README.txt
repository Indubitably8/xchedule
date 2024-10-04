** Installing Flutter **

Recommended Process: Install via VS Code
1) Launch VS Code 2) Install Flutter extension for VS Code via Extensions (Ctrl+Shift+X) 3) Open command prompt (Ctrl+Shift+P) and type ">flutter: new project" 4)As VS Code prompts to locate flutter sdk, click "Download SDK" (ignore template prompt). Consider installing under "C:\[INSERT USER\dev" 5)Once output panel displays that flutter is done initializing, type ">flutter: run doctor" in the command prompt to ensure everything was successful.
NOTE: Once installed, you don't have to use VS Code if you don't want to (I recommend Android Studio), it just makes it easier to install. Make sure to add SDK when installing.

Flutter Installation Documentation
https://docs.flutter.dev/get-started/install/windows/mobile

** Additional Flutter Configuration **

Configuring Flutter for Android Studio
1) Go to Settings>Languages & Frameworks>Flutter 2)Insert the Flutter SDK file path

Allowing http get requests with chrome client
1) Open [Flutter SDK Path]\packages\flutter_tools\lib\src\web\chrome.dart 2)Find '--disable-extensions' 3) Insert '--disable-web-security' below that line