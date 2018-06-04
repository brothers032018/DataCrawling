package com.nova.devday.ViewCandidateInfoPage;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class ViewCandidateInfoPageData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class ViewCandidateInfoPageData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -7758208332719778944L;

  private org.primefaces.model.StreamedContent excelFileStreamContent;

  /**
   * Gets the field excelFileStreamContent.
   * @return the value of the field excelFileStreamContent; may be null.
   */
  public org.primefaces.model.StreamedContent getExcelFileStreamContent()
  {
    return excelFileStreamContent;
  }

  /**
   * Sets the field excelFileStreamContent.
   * @param _excelFileStreamContent the new value of the field excelFileStreamContent.
   */
  public void setExcelFileStreamContent(org.primefaces.model.StreamedContent _excelFileStreamContent)
  {
    excelFileStreamContent = _excelFileStreamContent;
  }

  private java.util.List<com.nova.devday.CandidateInfo> candidateInfos;

  /**
   * Gets the field candidateInfos.
   * @return the value of the field candidateInfos; may be null.
   */
  public java.util.List<com.nova.devday.CandidateInfo> getCandidateInfos()
  {
    return candidateInfos;
  }

  /**
   * Sets the field candidateInfos.
   * @param _candidateInfos the new value of the field candidateInfos.
   */
  public void setCandidateInfos(java.util.List<com.nova.devday.CandidateInfo> _candidateInfos)
  {
    candidateInfos = _candidateInfos;
  }

}
