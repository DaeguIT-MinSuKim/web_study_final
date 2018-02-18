package kr.or.dgit.web_study_final.util;

import java.text.DecimalFormat;

public class FormatUtil {

	public static String number(long number, String pattern) {
		DecimalFormat format = new DecimalFormat(pattern);
		return format.format(number);
	}

}