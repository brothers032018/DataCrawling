[Ivy]
16411085441B578A 3.20 #module
>Proto >Proto Collection #zClass
Ls0 CrawlingPageProcess Big #zClass
Ls0 RD #cInfo
Ls0 #process
Ls0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Ls0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Ls0 @TextInP .resExport .resExport #zField
Ls0 @TextInP .type .type #zField
Ls0 @TextInP .processKind .processKind #zField
Ls0 @AnnotationInP-0n ai ai #zField
Ls0 @MessageFlowInP-0n messageIn messageIn #zField
Ls0 @MessageFlowOutP-0n messageOut messageOut #zField
Ls0 @TextInP .xml .xml #zField
Ls0 @TextInP .responsibility .responsibility #zField
Ls0 @RichDialogInitStart f0 '' #zField
Ls0 @RichDialogProcessEnd f1 '' #zField
Ls0 @RichDialogEnd f4 '' #zField
Ls0 @PushWFArc f11 '' #zField
Ls0 @RichDialogMethodStart f7 '' #zField
Ls0 @GridStep f2 '' #zField
Ls0 @PushWFArc f6 '' #zField
Ls0 @PushWFArc f8 '' #zField
Ls0 @ErrorBoundaryEvent f3 '' #zField
Ls0 @PushWFArc f5 '' #zField
>Proto Ls0 Ls0 CrawlingPageProcess #zField
Ls0 f0 guid 1641108545350AB1 #txt
Ls0 f0 type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
Ls0 f0 method start() #txt
Ls0 f0 disableUIEvents true #txt
Ls0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f0 outParameterDecl '<> result;
' #txt
Ls0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ls0 f0 83 51 26 26 -16 15 #rect
Ls0 f0 @|RichDialogInitStartIcon #fIcon
Ls0 f1 type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
Ls0 f1 323 51 26 26 0 12 #rect
Ls0 f1 @|RichDialogProcessEndIcon #fIcon
Ls0 f4 type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
Ls0 f4 guid 16411085467B00E8 #txt
Ls0 f4 451 195 26 26 0 12 #rect
Ls0 f4 @|RichDialogEndIcon #fIcon
Ls0 f11 expr out #txt
Ls0 f11 109 64 323 64 #arcP
Ls0 f7 guid 164111FDF2F38B12 #txt
Ls0 f7 type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
Ls0 f7 method startCrawling() #txt
Ls0 f7 disableUIEvents false #txt
Ls0 f7 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Ls0 f7 outParameterDecl '<> result;
' #txt
Ls0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>startCrawling()</name>
    </language>
</elementInfo>
' #txt
Ls0 f7 83 195 26 26 -40 12 #rect
Ls0 f7 @|RichDialogMethodStartIcon #fIcon
Ls0 f2 actionDecl 'com.aavn.sharing.CrawlingPage.CrawlingPageData out;
' #txt
Ls0 f2 actionTable 'out=in;
' #txt
Ls0 f2 actionCode 'import aavn.knowledge.sharing.service.CrawlingService;

CrawlingService crawlingService = new CrawlingService();
crawlingService.crawlData();' #txt
Ls0 f2 type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
Ls0 f2 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Crawling Data</name>
        <nameStyle>13,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Ls0 f2 224 186 112 44 -39 -8 #rect
Ls0 f2 @|StepIcon #fIcon
Ls0 f6 expr out #txt
Ls0 f6 109 208 224 208 #arcP
Ls0 f8 expr out #txt
Ls0 f8 336 208 451 208 #arcP
Ls0 f3 actionDecl 'com.aavn.sharing.CrawlingPage.CrawlingPageData out;
' #txt
Ls0 f3 actionTable 'out=in;
' #txt
Ls0 f3 type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
Ls0 f3 attachedToRef 16411085441B578A-f2 #txt
Ls0 f3 297 225 30 30 0 15 #rect
Ls0 f3 @|ErrorBoundaryEventIcon #fIcon
Ls0 f5 301 229 280 230 #arcP
>Proto Ls0 .type com.aavn.sharing.CrawlingPage.CrawlingPageData #txt
>Proto Ls0 .processKind HTML_DIALOG #txt
>Proto Ls0 -8 -8 16 16 16 26 #rect
>Proto Ls0 '' #fIcon
Ls0 f0 mainOut f11 tail #connect
Ls0 f11 head f1 mainIn #connect
Ls0 f7 mainOut f6 tail #connect
Ls0 f6 head f2 mainIn #connect
Ls0 f2 mainOut f8 tail #connect
Ls0 f8 head f4 mainIn #connect
Ls0 f3 mainOut f5 tail #connect
Ls0 f5 head f2 mainIn #connect
