[Ivy]
15FC85976296A125 3.20 #module
>Proto >Proto Collection #zClass
da0 deleteAllData Big #zClass
da0 B #cInfo
da0 #process
da0 @TextInP .resExport .resExport #zField
da0 @TextInP .type .type #zField
da0 @TextInP .processKind .processKind #zField
da0 @AnnotationInP-0n ai ai #zField
da0 @MessageFlowInP-0n messageIn messageIn #zField
da0 @MessageFlowOutP-0n messageOut messageOut #zField
da0 @TextInP .xml .xml #zField
da0 @TextInP .responsibility .responsibility #zField
da0 @StartRequest f0 '' #zField
da0 @EndTask f1 '' #zField
da0 @GridStep f3 '' #zField
da0 @PushWFArc f4 '' #zField
da0 @PushWFArc f2 '' #zField
>Proto da0 da0 deleteAllData #zField
da0 f0 outLink start.ivp #txt
da0 f0 type com.nova.devday.Data #txt
da0 f0 inParamDecl '<> param;' #txt
da0 f0 actionDecl 'com.nova.devday.Data out;
' #txt
da0 f0 guid 15FC859769B8B8CF #txt
da0 f0 requestEnabled true #txt
da0 f0 triggerEnabled false #txt
da0 f0 callSignature start() #txt
da0 f0 caseData businessCase.attach=true #txt
da0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
da0 f0 @C|.responsibility Everybody #txt
da0 f0 81 49 30 30 -21 17 #rect
da0 f0 @|StartRequestIcon #fIcon
da0 f1 type com.nova.devday.Data #txt
da0 f1 337 49 30 30 0 15 #rect
da0 f1 @|EndIcon #fIcon
da0 f3 actionDecl 'com.nova.devday.Data out;
' #txt
da0 f3 actionTable 'out=in;
' #txt
da0 f3 actionCode 'import nova.devday.persistent.CrawlingPersistentService;
CrawlingPersistentService crawlingPersistentServicev= new CrawlingPersistentService();
crawlingPersistentServicev.eraseDB();' #txt
da0 f3 type com.nova.devday.Data #txt
da0 f3 168 42 112 44 0 -8 #rect
da0 f3 @|StepIcon #fIcon
da0 f4 expr out #txt
da0 f4 111 64 168 64 #arcP
da0 f2 expr out #txt
da0 f2 280 64 337 64 #arcP
>Proto da0 .type com.nova.devday.Data #txt
>Proto da0 .processKind NORMAL #txt
>Proto da0 0 0 32 24 18 0 #rect
>Proto da0 @|BIcon #fIcon
da0 f0 mainOut f4 tail #connect
da0 f4 head f3 mainIn #connect
da0 f3 mainOut f2 tail #connect
da0 f2 head f1 mainIn #connect
