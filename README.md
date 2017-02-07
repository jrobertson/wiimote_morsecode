Introducing the Wiimote_morsecode gem

## Prerequisites

In order to use the Wiimote with the wiimote_morsecode gem you will first need to apt-get install the following:

* libboost-dev
* libcwiid-dev

## Usage

    require 'wiimote_morsecode'

    wm = WiimoteMorseCode.new sps_address: 'sps'
    wm.activate


## Sample Output

<pre>
wiimote/input: hello
</pre>

To output the above message the plus button was pressed 4 times to represent an *h*. Then the trigger button was pressed, and then the plus button was pressed once to represent an *e*. Then the trigger button was pressed, and then the buttons plus, minus,plus, plus were pressed to represent an *l*. The previous action was repreat to represent another *l*. Then the trigger button was pressed, and the minus button was pressed 3 times to represent an *o*, followed by the pressing of button A to publish the message *hello*.

## buttons

* minus button: dash
* plus button: dot
* trigger (button B): code separator
* A (button A): Translate the morse code and publish to the SPS broker

Note: Pressing the trigger (button B) twice represents a space character.

## Resources

* Morse code lookup http://www.jamesrobertson.eu/svg/2017/feb/07/morsecode.html
* Introducing the Wiimote_sps Gem http://www.jamesrobertson.eu/snippets/2015/jun/15/introducing-the-wiimote_sps-gem.html


morsecode wiimote gem wiimotemorsecode sps
