create table process_trace_events
(
    event_id bigint(20) auto_increment
        primary key,
    process_instance_id bigint(20) null,
    trace_event_type varchar(32) null,
    event_timestamp timestamp null,
    process_name varchar(64) null,
    node_name varchar(32) null,
    node_started_on timestamp null,
    action_event_type varchar(32) null,
    node_completed_on timestamp null,
    node_state varchar(16) null
);

