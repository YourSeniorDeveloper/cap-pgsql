namespace cap_pgsql;

entity Pessoa
{
    key ID : UUID;
    Nome : String(100);
    Sobrenome : String(100);
    Email : String(100);
}
