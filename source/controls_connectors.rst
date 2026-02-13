ZT-100 Controls and Connectors
==============================

Front Panel Overview
--------------------

.. figure:: img/fotos/Main_Hardware_Elements.png

    Control elements and connectors of the ZT-100 controller.

The ZT-100 front panel uses a 128 x 64 pixel transflective display and three
push buttons for menu control: **UP**, **DOWN**, and **SELECT (MODE)**. The
transflective display is readable in bright sunlight, and the LED backlight
allows operation at night.

There are two additional action buttons:

- **RESET**: Starts the reset/arm sequence, or stops transmit.
- **TRANSMIT**: Starts transmit during the arm window, or stops transmit.

Back Panel Connectors
---------------------

On the back panel you will find:

- A 50 Ohm BNC connector for an active GPS antenna.
- A power connector.
- The Zonge transmitter interface connector.
- A CAN output connector.

ZONGE Transmitter Connector Pinout
----------------------------------

On the ZT-100, the transmitter-control connector is a **15-pin female**
MIL-spec circular connector. This allows the ZT-100 to be controlled by an
XMT-R using the matching cable/connector set.

.. figure:: img/fotos/transmitter_connector_pinout.png

    Pinout of the 15-pin MIL transmitter controller connector. POL is on pin D
    (red), COMMON (GND) is on pin N (green) and ON/OFF is on pin K (yellow).

Use Zonge cable type **XMT/16-CN/6** for compatible transmitter/control
connections.

ZONGE Power Connector
---------------------

The power connector is a 3-pin MIL-spec circular connector of type
**KPT02E12-3S**.

- Pin A: Positive lead from an external generator power source
  (for example Zonge ZMG9, ZMG30, or similar)
- Pin B: Negative lead
- Pin C: Not connected

GPS Antenna Connector
---------------------

The GPS antenna connects via a 50 Ohm BNC connector. Use a 3.3 V active GPS
antenna with minimum gain of 15 dB and maximum gain of 30 dB.
