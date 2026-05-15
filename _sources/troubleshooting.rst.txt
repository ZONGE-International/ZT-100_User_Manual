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
- If **RDY** never appears, check for errors (see Error Labels).

ORE (Out-of-Range Resistance)
-----------------------------

Symptoms:

- Status label shows **ORE**.
- Transmit does not start after pressing **TRANSMIT**.

Actions:

- Verify transmitter and load connections.
- Check that the minimum/maximum resistance limits are appropriate.
- Press **RESET** and try transmit again.

ERR (Shared Error Line)
-----------------------

Symptoms:

- Status label shows **ERR**.

Actions:

- A safety/monitoring subsystem has asserted the shared error line.
- Check the TX Log or error label on the screen.
- Resolve the underlying error and press **RESET**.

Error Labels
------------

Any error label returns the system to a safe wait state. Use the label to
identify the source subsystem:

- **SM** = Safety system
- **MM** = Monitoring system
- **GM** = Gate driver system
- **FM** = Cooling/fan system

Common errors:

- **SM EMER**: Emergency stop input active.
- **SM GIUV/GIOV**: Global input under/over-voltage.
- **SM UDIUV/UDIOV**: User-defined under/over-voltage limit.
- **MM OVP/OVN**: Over-voltage (positive/negative).
- **MM OCP/OCN**: Over-current (positive/negative).
- **GM OTMP**: Gate driver over-temperature.
- **SM/MM/GM/FM LERR**: Local error on that subsystem.

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
