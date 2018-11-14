/*
*	Author	:Accenture-Srinath Vallab
*	Date	:15/Mar/2018
*	Purpose	:Updates the Deletion Date on Parent record
*/
trigger CaseTrigger on Case (after delete, after undelete) {
    //Handles delete and undelete scenarios for given record and its parents
    GDPR_Util.handleGDPRProcessFromTrigger(Trigger.old, Trigger.new,Trigger.isDelete,Trigger.isUnDelete,Trigger.isAfter);
}