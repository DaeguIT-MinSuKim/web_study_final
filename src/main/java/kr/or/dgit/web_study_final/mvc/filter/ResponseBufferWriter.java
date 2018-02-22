package kr.or.dgit.web_study_final.mvc.filter;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ResponseBufferWriter extends PrintWriter {
	public ResponseBufferWriter() {
		super(new StringWriter(4096));
	}

	public String toString() {
		return ((StringWriter) super.out).toString();
	}
}