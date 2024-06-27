using { com.sap.eam.MaintenancePlan as Plan } from '../db/MaintenancePlan';


service MaintenancePlan {
    entity MaintenancePlan as projection on Plan;
}
