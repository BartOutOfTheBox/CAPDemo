context DATA {
    entity PERSON {
        key ID         : Integer;
            FIRST_NAME : String(100);
            LAST_NAME  : String(100);
    };
}

@cds.persistence.exists 
@cds.persistence.calcview 
Entity ![CV_PERSON] {
key     ![ID]: Integer  @title: 'ID: ID' ; 
        ![FIRST_NAME]: String(100)  @title: 'FIRST_NAME: FIRST_NAME' ; 
        ![LAST_NAME]: String(100)  @title: 'LAST_NAME: LAST_NAME' ; 
}
