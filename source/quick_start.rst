Quick Start
===========

This section covers the fastest path from power-on to first transmit.

Before You Start
----------------

- Connect the ZT-100 to an external DC power source.
- Connect the GPS antenna.
- Connect the transmitter cable.

Power On and Check Status
-------------------------

1. Power on the ZT-100.
2. Wait for GPS to begin locking.
3. Confirm satellite count is increasing and sync status moves toward locked.

Set Mode and Frequency
----------------------

1. Select the operating mode (**100% DC**, **50%**, **Custom**, or **MMR 5Hz**).
2. Set the target frequency.

.. note:: In **MMR 5Hz** mode, frequency is fixed at 5 Hz and cannot be edited.

Start Transmit
--------------

1. Press **RESET**.
2. You then have about 2 seconds to press **TRANSMIT**.
3. If everything is fine and load checks pass, transmit starts.

Stop Transmit
-------------

- Press either **RESET** or **TRANSMIT** to stop output.

Web Interface (Optional)
------------------------

1. Enable Wi-Fi on the device.
2. In hotspot mode, connect to `ZT-100`.
3. Open ``http://10.10.10.10/`` in a browser.
4. Or use the mobile app. It automatically connects to the correct network and
   IP address.

.. list-table::
   :widths: 50 50

   * - .. image:: img/webapp_phone/phone_03.png
          :alt: Phone web interface quick-start view (left)
          :width: 95%
     - .. image:: img/webapp_phone/phone_04.png
          :alt: Phone web interface quick-start view (right)
          :width: 95%

For details, see :doc:`menu_structure` and :doc:`web_interface`.
