using {company.projects as projects} from './projects';

annotate company.projects with @(
    UI.LineItem: [
        {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: description
        },
         {
            $Type:'UI.DataField',
            Value: startdate
        },
         {
            $Type:'UI.DataField',
            Value: enddate
        },
        {
            $Type:'UI.DataField',
            Value: status
        },
    ]
);

annotate company.projects with @(
    UI.FieldGroup #projects : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type:'UI.DataField',
            Value: name
        },
         {
            $Type:'UI.DataField',
            Value: description
        },
         {
            $Type:'UI.DataField',
            Value: startdate
        },
         {
            $Type:'UI.DataField',
            Value: enddate
        },
        {
            $Type:'UI.DataField',
            Value: status
        },
    ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#projects',
        },
    ],
);