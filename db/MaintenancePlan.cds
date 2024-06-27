namespace com.sap.eam;
using  {cuid} from '@sap/cds/common';
using  from './MaintenanceStrategy';
using  from './MaintenancePlanCallObject';
using  from './MaintenancePlanSchedulingIndicator';


entity MaintenancePlan : cuid {
    description : String;
    CreationDate : DateTime @cds.on.insert : $now;
    CreatedByUser : String @cds.on.insert : $user;
    LastChangeDate : DateTime @cds.on.update : $now;
    LastChangedByUser : String @cds.on.update : $user;
    MaintenanceStartegy : Association to eam.MaintenanceStrategy;
    SchedulingDuration : Integer;
    SchedulingDurationUnit : String(3);
    BasicStartDate : Date;
    MaintenancePlanCallObject : Association to  eam.MaintenanceCallObject;
    MaintenancePlanSchedulingIndicator : Association to  eam.MaintenancePlanSchedulingIndicator;

}