CREATE TABLE test \
( \
    `EventDate` DateTime, \
    `CounterId` UInt32 \
) \
ENGINE = ReplacingMergeTree(EventDate) \
PARTITION BY toYYYYMM(EventDate) \
ORDER BY (CounterId, EventDate);

INSERT INTO test VALUES ('2020-01-01 01:01:01', 1);
