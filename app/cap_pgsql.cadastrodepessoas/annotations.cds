using cap_pgsqlService as service from '../../srv/service';
annotate service.Pessoa with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Nome',
                Value : Nome,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Sobrenome',
                Value : Sobrenome,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : Email,
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
            Label : 'Nome',
            Value : Nome,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Sobrenome',
            Value : Sobrenome,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Email',
            Value : Email,
        },
    ],
);

