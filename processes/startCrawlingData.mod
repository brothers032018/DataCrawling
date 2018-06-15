[Ivy]
15FBF01D998D2EFC 3.20 #module
>Proto >Proto Collection #zClass
sa0 startCrawlingData Big #zClass
sa0 B #cInfo
sa0 #process
sa0 @TextInP .resExport .resExport #zField
sa0 @TextInP .type .type #zField
sa0 @TextInP .processKind .processKind #zField
sa0 @AnnotationInP-0n ai ai #zField
sa0 @MessageFlowInP-0n messageIn messageIn #zField
sa0 @MessageFlowOutP-0n messageOut messageOut #zField
sa0 @TextInP .xml .xml #zField
sa0 @TextInP .responsibility .responsibility #zField
sa0 @StartRequest f0 '' #zField
sa0 @EndTask f1 '' #zField
sa0 @GridStep f3 '' #zField
sa0 @PushWFArc f4 '' #zField
sa0 @PushWFArc f14 '' #zField
>Proto sa0 sa0 startCrawlingData #zField
sa0 f0 outLink start.ivp #txt
sa0 f0 type com.nova.devday.Data #txt
sa0 f0 inParamDecl '<> param;' #txt
sa0 f0 actionDecl 'com.nova.devday.Data out;
' #txt
sa0 f0 guid 15FBF01D9DF5B35B #txt
sa0 f0 requestEnabled true #txt
sa0 f0 triggerEnabled false #txt
sa0 f0 callSignature start() #txt
sa0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
sa0 f0 @C|.responsibility Everybody #txt
sa0 f0 81 49 30 30 -21 17 #rect
sa0 f0 @|StartRequestIcon #fIcon
sa0 f1 type com.nova.devday.Data #txt
sa0 f1 577 49 30 30 0 15 #rect
sa0 f1 @|EndIcon #fIcon
sa0 f3 actionDecl 'com.nova.devday.Data out;
' #txt
sa0 f3 actionTable 'out=in;
' #txt
sa0 f3 actionCode 'import aavn.knowledge.sharing.service.CrawlingService;


CrawlingService crawlingService = new CrawlingService();
crawlingService.crawlData();' #txt
sa0 f3 type com.nova.devday.Data #txt
sa0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Crawling Data</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
sa0 f3 280 42 112 44 -39 -8 #rect
sa0 f3 @|StepIcon #fIcon
sa0 f4 expr out #txt
sa0 f4 111 64 280 64 #arcP
sa0 f14 expr out #txt
sa0 f14 392 64 577 64 #arcP
>Proto sa0 .type com.nova.devday.Data #txt
>Proto sa0 .processKind NORMAL #txt
>Proto sa0 0 0 32 24 18 0 #rect
>Proto sa0 @|BIcon #fIcon
sa0 f0 mainOut f4 tail #connect
sa0 f4 head f3 mainIn #connect
sa0 f3 mainOut f14 tail #connect
sa0 f14 head f1 mainIn #connect
