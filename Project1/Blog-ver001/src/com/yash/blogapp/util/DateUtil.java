package com.yash.blogapp.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

	public String convertDatetoString(SimpleDateFormat formatter, Date today) {
		return formatter.format(today);
	}
	
	public String convertDateStringToString(String dateFromDB) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy HH:mm");
		String stringDate =null;
		
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(dateFromDB);
			stringDate = convertDatetoString(formatter,date);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return stringDate;
	}

}
