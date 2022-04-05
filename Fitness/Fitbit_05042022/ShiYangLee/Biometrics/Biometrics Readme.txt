Biometrics Data Export

Description: For users who have access and started to use biometrics features (such as Blood Glucose) in the Fitbit app this category of the data export includes all of the content added via those features. This includes your biometrics and other associated data, including annotations, time and type of measurement, your personal ranges and reminders.

Files Included:
----------

Glucose Reminders.csv

The list of reminders that you created in the Fitbit app.

    time                              - Time
    days                              - Days of week
    enabled                           - Whether this remainder enabled

----------

Glucose Target Ranges.csv

Your blood glucose personal target range.

    min                               - Target range (min)
    max                               - Target range (max)

----------

Glucose YYYYMM.csv

Each file holds the list of blood glucose values and associated data for the specific month (defined by YYYY-MM).

    time                              - Entry date and time
    value                             - Value
    unit                              - Unit (MMOL_L / MG_DL)
    data_source                       - Description of data source (UNKNOWN / MANUAL / APP)
    measurement_type                  - Entry type (UNSPECIFIED / SMBG / CGM / LAB_TEST)
    medical_codes                     - List of medical codes (if available) (LOINC and/or SNOMED)
    tags                              - List of associated annotations


