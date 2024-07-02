using MaintenancePlan as service from '../../srv/MaintenancePlanner';
annotate service.MaintenancePlan with @(
    odata.draft.enabled: true,
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationDate',
                Value : CreationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreatedByUser',
                Value : CreatedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastChangeDate',
                Value : LastChangeDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastChangedByUser',
                Value : LastChangedByUser,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaintenanceStartegy_startegy',
                Value : MaintenanceStartegy_startegy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SchedulingDuration',
                Value : SchedulingDuration,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SchedulingDurationUnit',
                Value : SchedulingDurationUnit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BasicStartDate',
                Value : BasicStartDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaintenancePlanCallObject_callObject',
                Value : MaintenancePlanCallObject_callObject,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MaintenancePlanSchedulingIndicator_startegy',
                Value : MaintenancePlanSchedulingIndicator_startegy,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreationDate',
            Value : CreationDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CreatedByUser',
            Value : CreatedByUser,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastChangeDate',
            Value : LastChangeDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LastChangedByUser',
            Value : LastChangedByUser,
        },
    ],
);

