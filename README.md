# gpio-input
a few bash scripts showcasing gpio input with a switch and LEDs

## Wiring

![image](https://puu.sh/C8jUh/946b220578.jpg)

## Install
In terminal

```bash
git clone https://github.com/Vrandus/gpio-input.git
```

## Usage

initialize pin modes

```bash
./initMode.sh
```

displays binary of inputted integer as argument

```bash
./setbits.sh <integer>
```

gets one button press at a time

```bash
./waitButton.sh
```

counts number of times button pressed, up to 16

```bash
./countButtonPress.sh
```
