package nova.devday.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import javax.faces.context.FacesContext;
import javax.servlet.ServletContext;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.primefaces.model.DefaultStreamedContent;
import org.primefaces.model.StreamedContent;

public class ExportingExcelFileUtils {
	
	private static final String EXTENSION_SEPARATOR = ".";
	
	private ExportingExcelFileUtils() {
		
	}
	
	public static StreamedContent generateStreamContent(File excel) throws IOException {
		return createStreamForDownloadFile(excel, getCurrentContext());
	}
	
	private static StreamedContent createStreamForDownloadFile(File file, ServletContext servletContext)
			throws IOException {
		String filename = file.getName();
		InputStream bais = new ByteArrayInputStream(
				FileUtils.readFileToByteArray(file));
		return createStreamForDownloadFile(bais,
				FilenameUtils.getExtension(filename),
				FilenameUtils.getBaseName(filename),
				servletContext);
	}
	
	private static StreamedContent createStreamForDownloadFile(
			InputStream stream, String fileType, String fileName, ServletContext servletContext)
			throws UnsupportedEncodingException {
		return new DefaultStreamedContent(stream,
				servletContext.getMimeType(fileName + EXTENSION_SEPARATOR + fileType), fileName
						+ EXTENSION_SEPARATOR + fileType);
	}
	
	private static ServletContext getCurrentContext() {
		return (ServletContext)FacesContext.getCurrentInstance().getExternalContext().getContext();
	}

}
