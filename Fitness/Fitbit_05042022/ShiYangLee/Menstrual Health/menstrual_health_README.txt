Menstrual Health Data Export

The Menstrual Health category of your data export includes all of the content you have added to the Fitbit menstrual health tracker. This includes your settings, symptoms, menstrual cycles and birth control.

Files Included:
----------

menstrual_health_birth_control.csv

This is the birth control data that you enter into the app.

    birth_control_type                - The type of birth control you use
    event_date                        - Date at which you started birth control
    has_started                       - Identifies if it has started or not

----------

menstrual_health_settings.csv

These are the settings that you enter while using menstrual health tracking

    pregnancy_history                 - Your pregnancy history
    birth_control_history             - Your birth control history
    avg_period_days                   - Average number of days your period lasts (entered by user)
    avg_cycle_days                    - Average number of days your cycle lasts (entered by user)

----------

menstrual_health_symptoms.csv

These are symptoms that you can log on a daily basis.

    timestamp                         - The date at which you recorded your symptom
    fluids                            - The type of fluid you logged for the date
    flow                              - The type of flow you experienced and you logged
    conditions                        - Logged conditions like acne, headache, etc (multivalued)
    sex                               - Protected/unprotected sex
    ovulation_test                    - Result of an OPK test that you may have logged
    cycle_altering_event              - Cycle altering event such as morning after pill or pregnancy
    mood                              - Moods you experienced on that day. (multivalued)

-----------

menstrual_health_cycles.csv

All your data about menstrual cycles.

    id                                - Cycle id
    cycle_start_date                  - Cycle start date
    cycle_end_date                    - Cycle end date
    ovulation_start_date              - Start date for ovulation phase for this cycle
    ovulation_end_date                - End date for ovulation phase for this cycle
    ovulation_source                  - Computed (internally computed prediction) / Manual (entered by you)
    period_start_date                 - Start date of your period for this cycle
    period_end_date                   - End date of your period for this cycle
    period_source                     - Computed (internally computed prediction) / Manual (entered by you)
    fertile_start_date                - Start date of your fertile window for this cycle
    fertile_end_date                  - End date of your fertile window for this cycle
    fertile_source                    - Computed (internally computed prediction) / Manual(entered by you)
