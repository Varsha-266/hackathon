using {com.varsha.projects as db} from '../db/schema';

service company {
    entity projects as projection on db.projects;
    entity Files as projection on db.Files;
}

annotate company.projects with @odata.draft.enabled;