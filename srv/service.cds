using DATA from '../db/schema';
using CV_PERSON from '../db/schema';

service CatalogService @(requires: 'authenticated-user'){
    entity Persons
        as projection on DATA.PERSON;

    @readonly
    entity ViewPersons as projection on CV_PERSON;
}
