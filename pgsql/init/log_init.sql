CREATE UNLOGGED TABLE SystemEvents
(
    ID SERIAL PRIMARY KEY,
    CustomerID BIGINT,
    ReceivedAt TIMESTAMP NULL,
    DeviceReportedTime TIMESTAMP NULL,
    Facility SMALLINT NULL,
    Priority SMALLINT NULL,
    FromHost VARCHAR(60) NULL,
    Message TEXT,
    NTSeverity INT NULL,
    Importance INT NULL,
    EventSource VARCHAR(60),
    EventUser VARCHAR(60) NULL,
    EventCategory INT NULL,
    EventID INT NULL,
    EventBinaryData TEXT NULL,
    MaxAvailable INT NULL,
    CurrUsage INT NULL,
    MinUsage INT NULL,
    MaxUsage INT NULL,
    InfoUnitID INT NULL ,
    SysLogTag VARCHAR(60),
    EventLogType VARCHAR(60),
    GenericFileName VARCHAR(60),
    SystemID INT NULL
);

CREATE UNLOGGED TABLE SystemEventsProperties
(
    ID SERIAL PRIMARY KEY,
    SystemEventID INT NULL,
    ParamName VARCHAR(255) NULL,
    ParamValue TEXT NULL
);

CREATE INDEX SystemEvents_CustomerID_ix ON SystemEvents (CustomerID);
CREATE INDEX SystemEvents_ReceivedAt_ix ON SystemEvents (ReceivedAt);
CREATE INDEX SystemEvents_DeviceReportedTime_ix ON SystemEvents (DeviceReportedTime);
CREATE INDEX SystemEvents_Facility_ix ON SystemEvents (Facility);
CREATE INDEX SystemEvents_Priority_ix ON SystemEvents (Priority);
CREATE INDEX SystemEvents_FromHost_ix ON SystemEvents (FromHost);
CREATE INDEX SystemEvents_NTSeverity_ix ON SystemEvents (NTSeverity);
CREATE INDEX SystemEvents_Importance_ix ON SystemEvents (Importance);
CREATE INDEX SystemEvents_EventSource_ix ON SystemEvents (EventSource);
CREATE INDEX SystemEvents_EventUser_ix ON SystemEvents (EventUser);
CREATE INDEX SystemEvents_EventCategory_ix ON SystemEvents (EventCategory);
CREATE INDEX SystemEvents_EventID_ix ON SystemEvents (EventID);
CREATE INDEX SystemEvents_InfoUnitID_ix ON SystemEvents (InfoUnitID);
CREATE INDEX SystemEvents_SysLogTag_ix ON SystemEvents (SysLogTag);
CREATE INDEX SystemEvents_EventLogType_ix ON SystemEvents (EventLogType);
CREATE INDEX SystemEvents_GenericFileName_ix ON SystemEvents (GenericFileName);
CREATE INDEX SystemEvents_SystemID_ix ON SystemEvents (SystemID);
CREATE INDEX SystemEventsProperties_SystemEventID_ix ON SystemEventsProperties (SystemEventID);
CREATE INDEX SystemEventsProperties_ParamName_ix ON SystemEventsProperties (ParamName);
