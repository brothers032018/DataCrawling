[Ivy]
[>Created: Fri Nov 17 11:09:38 ICT 2017]
15FC28DA79159D3C 3.18 #module
>Proto >Proto Collection #zClass
Vs0 ViewCandidateInfoPageProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Vs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Vs0 @TextInP .resExport .resExport #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @RichDialogInitStart f0 '' #zField
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @GridStep f6 '' #zField
Vs0 @PushWFArc f7 '' #zField
Vs0 @PushWFArc f2 '' #zField
Vs0 @RichDialogProcessStart f8 '' #zField
Vs0 @RichDialogProcessEnd f3 '' #zField
Vs0 @GridStep f5 '' #zField
Vs0 @PushWFArc f9 '' #zField
Vs0 @PushWFArc f4 '' #zField
>Proto Vs0 Vs0 ViewCandidateInfoPageProcess #zField
Vs0 f0 guid 15FC28DA7C1D3E88 #txt
Vs0 f0 type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
Vs0 f0 method start() #txt
Vs0 f0 disableUIEvents true #txt
Vs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Vs0 f0 outParameterDecl '<> result;
' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Vs0 f0 83 51 26 26 -16 15 #rect
Vs0 f0 @|RichDialogInitStartIcon #fIcon
Vs0 f1 type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
Vs0 f1 339 51 26 26 0 12 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f6 actionDecl 'com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData out;
' #txt
Vs0 f6 actionTable 'out=in;
' #txt
Vs0 f6 actionCode 'import nova.devday.persistent.CrawlingPersistentService;
import java.util.ArrayList;
import com.nova.devday.CandidateInfo;

CrawlingPersistentService crawlingPersistentService = new CrawlingPersistentService();
in.candidateInfos = crawlingPersistentService.getCandidateInfoList();
' #txt
Vs0 f6 type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
Vs0 f6 168 42 112 44 0 -8 #rect
Vs0 f6 @|StepIcon #fIcon
Vs0 f7 expr out #txt
Vs0 f7 109 64 168 64 #arcP
Vs0 f2 expr out #txt
Vs0 f2 280 64 339 64 #arcP
Vs0 f8 guid 15FC3C94A46A8506 #txt
Vs0 f8 type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
Vs0 f8 actionDecl 'com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData out;
' #txt
Vs0 f8 actionTable 'out=in;
' #txt
Vs0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>downloadExcelFile</name>
        <nameStyle>17,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f8 83 163 26 26 -51 15 #rect
Vs0 f8 @|RichDialogProcessStartIcon #fIcon
Vs0 f3 type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
Vs0 f3 339 163 26 26 0 12 #rect
Vs0 f3 @|RichDialogProcessEndIcon #fIcon
Vs0 f5 actionDecl 'com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData out;
' #txt
Vs0 f5 actionTable 'out=in;
' #txt
Vs0 f5 actionCode 'import nova.devday.utils.ExportingExcelFileUtils;
import nova.devday.service.ExportingExcelFileService;

java.io.File excelFile = ExportingExcelFileService.buildExcelFile(in.candidateInfos);
in.excelFileStreamContent = null;
in.excelFileStreamContent = ExportingExcelFileUtils.generateStreamContent(excelFile);' #txt
Vs0 f5 type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
Vs0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Generate excel file</name>
        <nameStyle>19,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f5 168 154 112 44 -50 -8 #rect
Vs0 f5 @|StepIcon #fIcon
Vs0 f9 expr out #txt
Vs0 f9 109 176 168 176 #arcP
Vs0 f4 expr out #txt
Vs0 f4 280 176 339 176 #arcP
>Proto Vs0 .type com.nova.devday.ViewCandidateInfoPage.ViewCandidateInfoPageData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f0 mainOut f7 tail #connect
Vs0 f7 head f6 mainIn #connect
Vs0 f6 mainOut f2 tail #connect
Vs0 f2 head f1 mainIn #connect
Vs0 f8 mainOut f9 tail #connect
Vs0 f9 head f5 mainIn #connect
Vs0 f5 mainOut f4 tail #connect
Vs0 f4 head f3 mainIn #connect
