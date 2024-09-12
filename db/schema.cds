namespace com.varsha.projects;
using {cuid, managed} from '@sap/cds/common';

entity projects: managed, cuid {
    @title:'Name'
    name: String(10);
    @title: 'Description'
    description: String(20);
    @title: 'Start Date'
    startdate: Date;
    @title: 'End Date'
    enddate: Date;
    @title: 'client'
    status: String(10);
}

entity Files: cuid, managed{
    @Core.MediaType: mediaType
    content: LargeBinary;
    @Core.IsMediaType: true
    mediaType: String;
    fileName: String;
    size: Integer;
    url: String;
}



