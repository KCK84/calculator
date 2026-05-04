#!/bin/bash

javac Calculator.java
jar cfe Calculator.jar Calculator Calculator.class
rm -rf Calculator.app

jpackage \
  --name "Calculator" \
  --input . \
  --main-jar Calculator.jar \
  --main-class Calculator \
  --icon calculator_icon_1024.icns \
  --type app-image

echo "Fertig: Calculator.app wurde neu gebaut."