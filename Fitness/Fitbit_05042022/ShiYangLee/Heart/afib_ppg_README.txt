Afib Ppg Data Export

The Afib PPG category of your data export includes all of the content you have added to Afib PPG in the app. This includes alerts you received.

Files Included:
----------

afib_ppg_enrollment.csv

This is the data related to Afib PPG enrollment status.

   consented                                      - If user has consented to Afib PPG program agreement
   onboarded                                      - If user has finished the onboard process for the Afib PPG program
   enrolled                                       - If user has completed enrollment into the Afib PPG program
   last_updated                                   - What was the last time when the user's status was updated
   last_notified                                  - What was the last time when the user was notified about a positive observation

----------

afib_ppg_alerts.csv

This is the data that represents all the received alerts.

    alert_time                                    - Current alert time
    alert_detected_time                           - Time of Afib PPG positive detection
    alert_wire_id                                 - The wire ID of the device on which the data was taken
    alert_is_read                                 - Was this Afib PPG alert read already or not
    window_bpm_time                               - Afib PPG analysed window bpm time
    window_bpm_value                              - Afib PPG analysed window bpm value

----------

afib_ppg_windows.csv

This is the data that represents all the analyzed Afib PPG windows.

    start_time                                    - The analysed window start time
    is_positive                                   - Does the analysed window have positive detections or not
    wire_id                                       - The wire ID of the device on which the data was taken
    bpm_time                                      - Afib PPG analysed window bpm time
    bpm_value                                     - Afib PPG analysed window bpm value
