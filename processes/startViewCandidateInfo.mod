[Ivy]
[>Created: Thu Nov 16 11:05:15 ICT 2017]
15FC2FE31081B441 3.18 #module
>Proto >Proto Collection #zClass
so0 startViewCandidateInfo Big #zClass
so0 B #cInfo
so0 #process
so0 @TextInP .resExport .resExport #zField
so0 @TextInP .type .type #zField
so0 @TextInP .processKind .processKind #zField
so0 @AnnotationInP-0n ai ai #zField
so0 @MessageFlowInP-0n messageIn messageIn #zField
so0 @MessageFlowOutP-0n messageOut messageOut #zField
so0 @TextInP .xml .xml #zField
so0 @TextInP .responsibility .responsibility #zField
so0 @RichDialog f11 '' #zField
so0 @EndTask f13 '' #zField
so0 @StartRequest f9 '' #zField
so0 @PushWFArc f12 '' #zField
so0 @PushWFArc f14 '' #zField
>Proto so0 so0 startViewCandidateInfo #zField
so0 f11 targetWindow NEW:card: #txt
so0 f11 targetDisplay TOP #txt
so0 f11 richDialogId com.nova.devday.ViewCandidateInfoPage #txt
so0 f11 startMethod start() #txt
so0 f11 type com.nova.devday.Data #txt
so0 f11 requestActionDecl '<> param;' #txt
so0 f11 responseActionDecl 'com.nova.devday.Data out;
' #txt
so0 f11 responseMappingAction 'out=in;
' #txt
so0 f11 windowConfiguration '* ' #txt
so0 f11 isAsynch false #txt
so0 f11 isInnerRd false #txt
so0 f11 userContext '* ' #txt
so0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ViewCandidateInfoPage</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
so0 f11 183 150 144 44 -66 -8 #rect
so0 f11 @|RichDialogIcon #fIcon
so0 f13 type com.nova.devday.Data #txt
so0 f13 596 157 30 30 0 15 #rect
so0 f13 @|EndIcon #fIcon
so0 f9 outLink startViewInfo.ivp #txt
so0 f9 type com.nova.devday.Data #txt
so0 f9 inParamDecl '<> param;' #txt
so0 f9 actionDecl 'com.nova.devday.Data out;
' #txt
so0 f9 guid 15FC2FE55FAF8A61 #txt
so0 f9 requestEnabled true #txt
so0 f9 triggerEnabled false #txt
so0 f9 callSignature startViewInfo() #txt
so0 f9 persist false #txt
so0 f9 taskData 'TaskTriggered.ROL=Everybody
TaskTriggered.EXTYPE=0
TaskTriggered.EXPRI=2
TaskTriggered.TYPE=0
TaskTriggered.PRI=2
TaskTriggered.EXROL=Everybody' #txt
so0 f9 showInStartList 1 #txt
so0 f9 taskAndCaseSetupAction 'import ch.ivyteam.ivy.workflow.TaskUpdateDefinition;
ch.ivyteam.ivy.workflow.TaskUpdateDefinition taskUpdDef = new ch.ivyteam.ivy.workflow.TaskUpdateDefinition();
import ch.ivyteam.ivy.request.impl.DefaultCalendarProxy;
DefaultCalendarProxy calendarProxy = ivy.cal as DefaultCalendarProxy;
taskUpdDef.setPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
taskUpdDef.setExpiryActivator("Everybody");
taskUpdDef.setExpiryPriority(ch.ivyteam.ivy.workflow.WorkflowPriority.valueOf(2));
engine.updateCurrentTask(taskUpdDef);
' #txt
so0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startViewInfo.ivp</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
so0 f9 @C|.responsibility Everybody #txt
so0 f9 80 157 30 30 -44 17 #rect
so0 f9 @|StartRequestIcon #fIcon
so0 f12 expr out #txt
so0 f12 110 172 183 172 #arcP
so0 f14 expr out #txt
so0 f14 327 172 596 172 #arcP
>Proto so0 .type com.nova.devday.Data #txt
>Proto so0 .processKind NORMAL #txt
>Proto so0 0 0 32 24 18 0 #rect
>Proto so0 @|BIcon #fIcon
so0 f9 mainOut f12 tail #connect
so0 f12 head f11 mainIn #connect
so0 f11 mainOut f14 tail #connect
so0 f14 head f13 mainIn #connect
