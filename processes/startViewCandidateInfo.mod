[Ivy]
15FC2FE31081B441 3.20 #module
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
so0 @EndTask f13 '' #zField
so0 @StartRequest f9 '' #zField
so0 @RichDialog f0 '' #zField
so0 @PushWFArc f1 '' #zField
so0 @PushWFArc f2 '' #zField
>Proto so0 so0 startViewCandidateInfo #zField
so0 f13 type com.aavn.sharing.Data #txt
so0 f13 596 157 30 30 0 15 #rect
so0 f13 @|EndIcon #fIcon
so0 f9 outLink startViewInfo.ivp #txt
so0 f9 type com.aavn.sharing.Data #txt
so0 f9 inParamDecl '<> param;' #txt
so0 f9 actionDecl 'com.aavn.sharing.Data out;
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
so0 f9 caseData businessCase.attach=true #txt
so0 f9 showInStartList 1 #txt
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
so0 f0 targetWindow NEW:card: #txt
so0 f0 targetDisplay TOP #txt
so0 f0 richDialogId com.aavn.sharing.ViewCandidateInfoPage #txt
so0 f0 startMethod start() #txt
so0 f0 type com.aavn.sharing.Data #txt
so0 f0 requestActionDecl '<> param;' #txt
so0 f0 responseActionDecl 'com.aavn.sharing.Data out;
' #txt
so0 f0 responseMappingAction 'out=in;
' #txt
so0 f0 windowConfiguration '* ' #txt
so0 f0 isAsynch false #txt
so0 f0 isInnerRd false #txt
so0 f0 userContext '* ' #txt
so0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ViewCandidateInfoPage</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
so0 f0 258 150 144 44 -66 -8 #rect
so0 f0 @|RichDialogIcon #fIcon
so0 f1 expr out #txt
so0 f1 110 172 258 172 #arcP
so0 f2 expr out #txt
so0 f2 402 172 596 172 #arcP
>Proto so0 .type com.aavn.sharing.Data #txt
>Proto so0 .processKind NORMAL #txt
>Proto so0 0 0 32 24 18 0 #rect
>Proto so0 @|BIcon #fIcon
so0 f9 mainOut f1 tail #connect
so0 f1 head f0 mainIn #connect
so0 f0 mainOut f2 tail #connect
so0 f2 head f13 mainIn #connect
