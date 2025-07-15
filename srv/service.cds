using { cap_pgsql as my } from '../db/schema.cds';

@path : '/service/cap_pgsqlService'
service cap_pgsqlService
{
    @odata.draft.enabled
    entity Pessoa as
        projection on my.Pessoa;
}

annotate cap_pgsqlService with @requires :
[
    'authenticated-user'
];
