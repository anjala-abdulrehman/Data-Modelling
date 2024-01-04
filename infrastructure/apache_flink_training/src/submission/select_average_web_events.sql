
SELECT
    *
FROM
    web_events_sessions
        WHERE host IN
              (
               'www.zachwilson.tech',
               'lulu.techcreator.io',
               'zachwilson.techcreator.io'
              )