Troubleshooting
===============

This section focuses on the most common operational issues and how to resolve
or diagnose them using the screen and web interface.

No GPS Lock / Sync Searching
----------------------------

Symptoms:

- Satellite count is low or zero.
- Sync indicator shows searching.

Actions:

- Verify the GPS antenna is connected to the BNC port.
- Move to an open area with clear sky view.
- Wait a few minutes for initial acquisition.

Transmit Button Disabled
------------------------

Symptoms:

- **Transmit** is disabled on the web UI.
- The screen does not show **RDY**.

Actions:

- Press **RESET** to start the reset/arm sequence.
- Wait for **RDY** (arm window). The window is short (about 2 seconds).
- If **RDY** never appears, note the displayed code and use the
  :ref:`zt100-error-code-reference`.

.. _zt100-error-code-reference:

Error Codes and Corrective Actions
----------------------------------

An error code identifies the protection function or subsystem that prevented
operation. The controller disables the transmitter output and returns to a
safe wait state whenever an error is detected.

Codes beginning with a subsystem prefix identify the reporting module:

- **SM** -- Safety module
- **MM** -- Monitoring module
- **GM** -- Gate-driver module
- **FM** -- Cooling/fan module

.. warning::

   An error code means that a protection condition has stopped operation.
   Do not bypass an interlock or repeatedly reset the unit without correcting
   the cause. Connected power equipment may remain hazardous even though the
   ZT-100 has disabled its transmitter output.

.. list-table:: Error-code reference
   :header-rows: 1
   :widths: 16 34 50
   :class: zt-error-code-table

   * - Display code
     - Meaning
     - Operator response
   * - **ERR**
     - The shared system error line is active, but a more specific source has
       not been identified.
     - Keep the unit stopped. Check the supply, transmitter, load, and cable
       connections. After correcting any visible problem, press **RESET** once
       to run the protection check again. If **ERR** returns without a more
       specific code, contact Zonge International technical support.
   * - **ORE**
     - The measured load resistance is outside the configured **Minimum
       Resistance** and **Maximum Resistance** limits, or the resistance
       measurement did not complete within the allowed time.
     - Check the transmitter cable and load circuit, then confirm that both
       resistance limits are appropriate for the installation. Press **RESET**
       and repeat the transmit sequence only after correcting the cause.
   * - **SM EMER**
     - The emergency-stop input is active.
     - Make the work area safe, determine why the emergency stop was
       activated, and release it only when safe to do so. Verify the
       emergency-stop circuit, then press **RESET**.
   * - **SM GIUV**
     - The safety module's global input under-voltage protection is active.
     - Verify the input power source and power connections. Restore the input
       voltage to the permitted range, then press **RESET**.
   * - **SM GIOV**
     - The safety module's global input over-voltage protection is active.
     - Verify the input power source and power connections. Restore the input
       voltage to the permitted range, then press **RESET**.
   * - **SM UDIUV**
     - The input voltage is below the user-defined **Input Under Voltage**
       limit.
     - Compare the configured limit with the actual input voltage. Correct the
       supply condition or, if authorized, set an appropriate limit; then
       press **RESET**.
   * - **SM UDIOV**
     - The input voltage is above the user-defined **Input Over Voltage**
       limit.
     - Compare the configured limit with the actual input voltage. Correct the
       supply condition or, if authorized, set an appropriate limit; then
       press **RESET**.
   * - **SM LERR**
     - The safety module has asserted its local error flag without a more
       specific safety input code.
     - Confirm that the emergency-stop and input-voltage conditions are
       normal, then press **RESET** once. If the code returns, contact Zonge
       International technical support.
   * - **SM ERR**
     - The safety module reported an error that is not represented by a more
       specific display code.
     - Record the code and operating conditions. Press **RESET** only after all
       safety inputs are normal. If the code returns, contact Zonge
       International technical support.
   * - **MM OVP**
     - Over-voltage was detected on the positive output half-cycle.
     - Keep the unit stopped and inspect the transmitter, load, cable, and
       operating setup. Press **RESET** only after correcting the cause. If the
       code returns, have the system serviced.
   * - **MM OVN**
     - Over-voltage was detected on the negative output half-cycle.
     - Keep the unit stopped and inspect the transmitter, load, cable, and
       operating setup. Press **RESET** only after correcting the cause. If the
       code returns, have the system serviced.
   * - **MM OCP**
     - Over-current was detected on the positive output half-cycle.
     - Keep the unit stopped and inspect the transmitter, load, cable, and
       operating setup. Press **RESET** only after correcting the cause. If the
       code returns, have the system serviced.
   * - **MM OCN**
     - Over-current was detected on the negative output half-cycle.
     - Keep the unit stopped and inspect the transmitter, load, cable, and
       operating setup. Press **RESET** only after correcting the cause. If the
       code returns, have the system serviced.
   * - **MM LERR**
     - The monitoring module has asserted its local error flag without a more
       specific voltage or current code.
     - Press **RESET** once after confirming that the transmitter and load
       connections are correct. If the code returns, contact Zonge
       International technical support.
   * - **MM ERR**
     - The monitoring module reported an error that is not represented by a
       more specific display code.
     - Record the code and operating conditions. Press **RESET** only after
       checking the transmitter and load. If the code returns, contact Zonge
       International technical support.
   * - **GM OTMP**
     - The gate-driver module temperature exceeded its protection threshold.
     - Allow the unit to cool. Check ambient temperature, ventilation, and fan
       operation, then press **RESET**. If the code returns, do not transmit;
       have the cooling and gate-driver systems serviced.
   * - **GM LERR**
     - The gate-driver module has asserted its local error flag without a more
       specific temperature code.
     - Press **RESET** once after confirming that the unit has adequate cooling
       and all external connections are secure. If the code returns, contact
       Zonge International technical support.
   * - **FM LERR**
     - The cooling/fan module has asserted its local error flag.
     - Check that vents are clear and that the fans operate normally. If a fan
       is not operating, do not transmit. Press **RESET** once after correcting
       the cause; have the cooling system serviced if the code returns.

The display reports one protection label at a time. If more than one condition
is active, correcting the displayed condition and pressing **RESET** may reveal
another code. The unit is ready to transmit only when the reset check completes
and **RDY** appears.

If a code persists after the stated checks, record the exact code, operating
mode, frequency, connected equipment, and the conditions immediately before
the stop. Provide this information to Zonge International technical support.

Wi-Fi Not Visible
-----------------

Symptoms:

- No ZT-100 SSID appears.

Actions:

- On the front panel, open **More Info** and set **Wi-Fi status** to **ON**.
- Wait for the Wi-Fi icon to appear on the top bar.

Can't Open the Web UI
---------------------

Symptoms:

- Browser cannot reach the device page.

Actions:

- If in hotspot mode, connect to the device SSID and open
  ``http://10.10.10.10/``.
- If in local network mode, use the IP address shown on the screen.
- Confirm **Wi-Fi status** is **ON**.

Custom File Upload Fails
------------------------

Symptoms:

- Upload rejected or file not listed.

Actions:

- Ensure the file extension is **.usm**.
- The web UI rejects files larger than 256 KB.
- Stay in **Custom** mode while uploading.

OTA Update Fails
----------------

Symptoms:

- Upload rejected or target mismatch.

Actions:

- Confirm the firmware file matches the selected target in the web UI.
- If the upload is rejected, re-check target selection and file version.
- Keep the browser open until the update process completes.
