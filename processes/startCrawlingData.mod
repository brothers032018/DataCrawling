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
sa0 @RichDialog f11 '' #zField
sa0 @PushWFArc f5 '' #zField
sa0 @RichDialog f6 '' #zField
sa0 @PushWFArc f7 '' #zField
sa0 @PushWFArc f8 '' #zField
>Proto sa0 sa0 startCrawlingData #zField
sa0 f0 outLink start.ivp #txt
sa0 f0 type com.aavn.sharing.Data #txt
sa0 f0 inParamDecl '<> param;' #txt
sa0 f0 actionDecl 'com.aavn.sharing.Data out;
' #txt
sa0 f0 guid 15FBF01D9DF5B35B #txt
sa0 f0 requestEnabled true #txt
sa0 f0 triggerEnabled false #txt
sa0 f0 callSignature start() #txt
sa0 f0 caseData businessCase.attach=true #txt
sa0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
sa0 f0 @C|.responsibility Everybody #txt
sa0 f0 81 89 30 30 -21 17 #rect
sa0 f0 @|StartRequestIcon #fIcon
sa0 f1 type com.aavn.sharing.Data #txt
sa0 f1 713 89 30 30 0 15 #rect
sa0 f1 @|EndIcon #fIcon
sa0 f11 targetWindow NEW:card: #txt
sa0 f11 targetDisplay TOP #txt
sa0 f11 richDialogId com.aavn.sharing.ViewCandidateInfoPage #txt
sa0 f11 startMethod start() #txt
sa0 f11 type com.aavn.sharing.Data #txt
sa0 f11 requestActionDecl '<> param;' #txt
sa0 f11 responseActionDecl 'com.aavn.sharing.Data out;
' #txt
sa0 f11 responseMappingAction 'out=in;
' #txt
sa0 f11 windowConfiguration '* ' #txt
sa0 f11 isAsynch false #txt
sa0 f11 isInnerRd false #txt
sa0 f11 userContext '* ' #txt
sa0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ViewCandidateInfoPage</name>
        <nameStyle>21,7
</nameStyle>
    </language>
</elementInfo>
' #txt
sa0 f11 448 82 144 44 -66 -8 #rect
sa0 f11 @|RichDialogIcon #fIcon
sa0 f5 expr out #txt
sa0 f5 592 104 713 104 #arcP
sa0 f6 targetWindow NEW #txt
sa0 f6 targetDisplay TOP #txt
sa0 f6 richDialogId com.aavn.sharing.CrawlingPage #txt
sa0 f6 startMethod start() #txt
sa0 f6 type com.aavn.sharing.Data #txt
sa0 f6 requestActionDecl '<> param;' #txt
sa0 f6 responseActionDecl 'com.aavn.sharing.Data out;
' #txt
sa0 f6 responseMappingAction 'out=in;
' #txt
sa0 f6 isAsynch false #txt
sa0 f6 isInnerRd false #txt
sa0 f6 userContext '* ' #txt
sa0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Loading page</name>
        <nameStyle>12,7
</nameStyle>
    </language>
</elementInfo>
' #txt
sa0 f6 200 82 112 44 -38 -8 #rect
sa0 f6 @|RichDialogIcon #fIcon
sa0 f7 expr out #txt
sa0 f7 111 104 200 104 #arcP
sa0 f8 expr out #txt
sa0 f8 312 104 448 104 #arcP
>Proto sa0 .type com.aavn.sharing.Data #txt
>Proto sa0 .processKind NORMAL #txt
>Proto sa0 0 0 32 24 18 0 #rect
>Proto sa0 @|BIcon #fIcon
sa0 f11 mainOut f5 tail #connect
sa0 f5 head f1 mainIn #connect
sa0 f0 mainOut f7 tail #connect
sa0 f7 head f6 mainIn #connect
sa0 f6 mainOut f8 tail #connect
sa0 f8 head f11 mainIn #connect
