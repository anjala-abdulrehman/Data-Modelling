-- insert the data into that table average_web_events_ddl

-- insert the data into that table average_web_events_ddl
-- Define a table to store the average number of web events in a session
-- by hostname (average_web_events_ddl)

INSERT INTO web_events_sessions
    (
        WITH tbl AS
        (
            SELECT
                 host AS dim_host_name,
                 count(*) AS num_events_per_session
            FROM web_events_sessions
            GROUP BY
                session_start_ts,
                session_end_ts,
                host
        )
        SELECT
            dim_host_name,
            ROUND(avg(num_events_per_session), 2) AS avg_events_per_session
            FROM tbl
            GROUP BY dim_host_name
)
