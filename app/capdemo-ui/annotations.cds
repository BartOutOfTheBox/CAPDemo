using CatalogService as service from '../../srv/service';

annotate service.Persons with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FIRST_NAME',
            Value : FIRST_NAME,
        },
        {
            $Type : 'UI.DataField',
            Label : 'LAST_NAME',
            Value : LAST_NAME,
        },
    ]
);
annotate service.Persons with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FIRST_NAME',
                Value : FIRST_NAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LAST_NAME',
                Value : LAST_NAME,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
