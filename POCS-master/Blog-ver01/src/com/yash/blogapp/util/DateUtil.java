package com.yash.blogapp.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public String convertDateToString(SimpleDateFormat formatter, Date today) {
		return formatter.format(today);
	}
	
	

}
