package nova.devday.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Clock;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang3.StringUtils;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.scripting.objects.Duration;

public class DateUtils {
	private static final int	SAME_DAY	= 0;
	private static final int	BIGGER		= 1;
	private static final int	SMALLER		= -1;
	public static final String DATE_FORMAT_CONFIGURATION = "ch_axonivy_fintech_standard_guiframework_dateFormat";
	public static final String TIME_FORMAT_CONFIGURATION = "ch_axonivy_fintech_standard_core_timeFormat";	
	public static final String DATE_TIME_FORMAT = "dd.MM.yyyy HH:mm:ss";
	public static final String DATE_TIME_NO_SECOND_FORMAT = "dd.MM.yyyy HH:mm";
	public static final String DATE_FORMAT = "dd.MM.yyyy";
	public static final String DATE_FORMAT_SHORT_YEAR = "dd.MM.yy";
	public static final int MILISECONDS = 1000;
	public static final int ADDITIONAL_YEAR_TO_ROLL_BACK = 10;
	public static final int NUMBER_OF_ROLL_BACK_YEAR = -100;
	public static final int MONTHS_IN_YEAR = 12;
    private static final Clock clock = Clock.systemDefaultZone();
	
	public static ch.ivyteam.ivy.scripting.objects.Date getUnInitDate() {
		return ch.ivyteam.ivy.scripting.objects.Date.UNINITIALIZED_DATE;
	}
	
	public static Date newDate() {
		return new Date();
	}
	
	public static Date newDate(int day, int month, int year) {
		return newDate(day, month, year, 0, 0, 0);
	}

	public static Date newDate(int day, int month, int year, int hour, int minute) {
		return newDate(day, month, year, hour, minute, 0);
	}

	public static Date newDate(int day, int month, int year, int hour, int minute, int second) {
		Calendar calendar = new GregorianCalendar(year, month - 1, day, hour, minute, second);
		return toDate(calendar);
	}
	
	public static Date toDate(Calendar calendar) {
		return calendar.getTime();
	}

	public static Date addYear(Date date, int numOfYears){
		if (date == null) {
			return null;
		}
		return org.apache.commons.lang3.time.DateUtils.addYears(date, numOfYears);
	}
	
	public static Date addMonth(Date date, int numOfMonths) {
		if (date == null) {
			return null;
		}
		return org.apache.commons.lang3.time.DateUtils.addMonths(date, numOfMonths);
	}
	
	public static Date addDay(Date date, int numOfDays) {
		if (date == null) {
			return null;
		}
		return addHour(date, numOfDays * 24);
	}
	
	public static Date substractDay(Date date, int numOfDays) {
		if (date == null) {
			return null;
		}
		return addHour(date, -(numOfDays * 24));
	}

	public static Date addHour(Date date, int numOfHours) {
		if (date == null) {
			return null;
		}
		return addMinute(date, numOfHours * 60);
	}

	public static Date addMinute(Date date, int numOfMinutes) {
		Calendar newDate = toCalendar(date);
		newDate.add(Calendar.MINUTE, numOfMinutes);
		return toDate(newDate);
	}
	
	public static Date dateBefore(Date date) {
		Calendar cal = DateUtils.toCalendar(date);
		cal.add(Calendar.DATE, -1);
		return cal.getTime();
	}
	
	public static Date dateAfter(Date date) {
		Calendar cal = DateUtils.toCalendar(date);
		cal.add(Calendar.DATE, 1);
		return cal.getTime();
	}
	
	public static Calendar toCalendar(Date date) {
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.setFirstDayOfWeek(Calendar.MONDAY);
		return calendar;
	}
	
	public static Date createCurrentDateWithoutTime() {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);  
		return cal.getTime();
	}
	
	public static Date createCurrentDateWithInputTime(int hour, int minute, int second) {
		Calendar cal = Calendar.getInstance();
		cal.set(Calendar.HOUR_OF_DAY, hour);
		cal.set(Calendar.MINUTE, minute);
		cal.set(Calendar.SECOND, second);
		cal.set(Calendar.MILLISECOND, 0);  
		return cal.getTime();
	}
	
	public static int getCurrentYear(){
		Calendar cal = Calendar.getInstance();
		return cal.get(Calendar.YEAR);
	}
	
	public static Date createDateWithoutTime(Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0); 
		return cal.getTime();
	}
	
	public static String formatDate(Date date, String format) {
		if (date != null) {
			SimpleDateFormat dateFormat = new SimpleDateFormat(format);
			return dateFormat.format(date);
		}
		return null;
	}
	
	public static String formatDate(LocalDateTime dateTime, String format) {
		if(dateTime != null) {
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern(format);
			return dateTime.format(formatter);
		}
		return null;
	}
	
	public static String formatDate(Date date) {
		return formatDate(date, getDateFormat());
	}
	
	public static String formatDate(LocalDateTime date) {
		return formatDate(date, getDateFormat());
	}
	
	public static String formatDateTime(Date date) {
		return formatDate(date, DATE_TIME_FORMAT);
	}
	
	public static String formatDateTime(long timestamp){
	    Date date = convertTimestampToDate(timestamp);
	    return formatDate(date, DATE_TIME_FORMAT);
	}
	
	public static String formatDateTimeWithoutSecond(Date date){
		return formatDate(date, DATE_TIME_NO_SECOND_FORMAT);
	}
	
	public static String formatDateTimeWithoutSecond(LocalDateTime dateTime){
		return formatDate(dateTime, DATE_TIME_NO_SECOND_FORMAT);
	}
	
	public static Duration addDaysToCurrentDate(int days){				 
		Duration duration = new Duration(days+"D");		
		return duration;
	}
	
	public static Date parseDate(String dateString, String formatDate) {
		SimpleDateFormat formatter = new SimpleDateFormat(formatDate);
		try {
			return formatter.parse(dateString);
		} catch (ParseException e) {
			return null;
		}
	}
	
	public static Date parseDateWithDynamicFormat(String dateString){
		if (StringUtils.isEmpty(dateString)){
			return null;
		}
		if (dateString.length() == 8){
			return parseDateWithddMMyy(dateString);
		}
		return parseDate(dateString,DATE_FORMAT);
	}
	
	public static Date parseDateWithddMMyy (String dateString){
		SimpleDateFormat formatter = new SimpleDateFormat(DATE_FORMAT_SHORT_YEAR);		
		try {
			return formatter.parse(dateString);
		} catch (ParseException e) {
			return null;
		}
	}
	
	public static Date parseDateWithddMMyyyy (String dateString){
		SimpleDateFormat formatter = new SimpleDateFormat(DATE_FORMAT);		
		try {
			return formatter.parse(dateString);
		} catch (ParseException e) {
			return null;
		}
	}
	
	public static Date strictlyParseDateWithddMMyyyy (String dateString){
		if (StringUtils.isEmpty(dateString)){
			return null;
		}
		SimpleDateFormat formatter = new SimpleDateFormat(DATE_FORMAT);
		formatter.setLenient(false);
		try {
			return formatter.parse(dateString);
		} catch (ParseException e) {
			return null;
		}
	}
	
	public static String getDateFormat() {
		return Ivy.var().get(DATE_FORMAT_CONFIGURATION);
	}
	
	public static String getTimeFormat() {
		return Ivy.var().get(TIME_FORMAT_CONFIGURATION);
	}
	
	public static String getDateTimeFormat() {
		return getDateFormat() + StringUtils.SPACE + getTimeFormat();
	}
	
	public static int calculateAge(LocalDate birthDate, LocalDate currentDate) {
        if ((birthDate != null) && (currentDate != null)) {
            return Period.between(birthDate, currentDate).getYears();
        } else {
            return 0;
        }
    }
	
	public static LocalDate createLocalDateFromDate(Date inputDate) {
		if(inputDate == null){
			return null;
		}
		return inputDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
	}
	
	public static LocalDateTime createLocalDateTimeFromDate(Date inputDate) {
		if(inputDate == null){
			return null;
		}
		return inputDate.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime();
	}
	
	public static Date createDateBeforeCurrent(int daysBefore){
		Date myDate = createCurrentDateWithoutTime();
		Calendar cal = Calendar.getInstance();
		cal.setTime(myDate);
		cal.add(Calendar.DAY_OF_YEAR, -daysBefore);
		return cal.getTime();
	}
	
	public static int getCurrentAge(Object birthDay) {
		if(birthDay instanceof Date) {
			return calculateAge(createLocalDateFromDate((Date)birthDay), LocalDate.now(clock));
		} else {
			return 0;
		}
	}
	
	public static Date convertTimestampToDate(long timestamp){
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(timestamp);
		return cal.getTime();
	}
	
	public static int compareTwoDates(Object dateObject1, Object dateObject2) {
		if (dateObject1 == null || !(dateObject1 instanceof Date)) {
			return SMALLER;
		}
		if (dateObject2 == null || !(dateObject2 instanceof Date)) {
			return BIGGER;
		}
		Date date1 = (Date) dateObject1;
		Date date2 = (Date) dateObject2;
		return date1.compareTo(date2);
	}
	
	public static boolean isBeforeCurrentDay(Object objectFromRule) {
		if(objectFromRule == null || !(objectFromRule instanceof Date)) {
			return false;
		}
			
		Date dateToCheck = (Date) objectFromRule;
		
		if(dateToCheck.compareTo(new Date()) <= SAME_DAY ) {
			return true;
		}
		return false;
	}
	
	public static String toStringByFormat(Date date, String format){
		DateFormat formatter = new SimpleDateFormat(format);
		String result = "";
		try{
			result = formatter.format(date);
		}catch (Exception exception){
			return null;
		}
		return result;
	}
	
	public static long getNumberOfDayByDuration(Duration duration){
		if(duration == null){
			return 0;
		}
		return TimeUnit.SECONDS.toDays(duration.toNumber());
	}
	
	public static long getTimeInSecond(Date date){
		if(date == null){
			return new Date().getTime() / MILISECONDS;
		}
		return date.getTime() / MILISECONDS;
	}
	
	public static Date getStartTimeOfDate(Date date) {
		if(date == null) {
			return null;
		}
		LocalDateTime startTimeOfDate = createLocalDateFromDate(date).atStartOfDay();
		return createDateFromLocalDateTime(startTimeOfDate);
	}

	public static Date getEndTimeOfDate(Date date) {
		if(date == null) {
			return null;
		}
		LocalDateTime endTimeOfDate = createLocalDateFromDate(date).atTime(LocalTime.MAX);
		return createDateFromLocalDateTime(endTimeOfDate);
	}
	
	public static Date createDateFromLocalDateTime(LocalDateTime localDateTime) {
		if(localDateTime == null) {
			return null;
		}
		return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
	}
	
	public static Date createDateFromLocalDate(LocalDate localDate) {
		if(localDate == null) {
			return null;
		}
		return Date.from(localDate.atStartOfDay().atZone(ZoneId.systemDefault()).toInstant());
	}

	public static Date formatDateToShortYear(Date date){
		if(date == null){
			return null;
		}
		return parseDateWithddMMyy(toStringByFormat(date, DATE_FORMAT_SHORT_YEAR));
	}
	
	public static Date rollBackIfShortYearIsExceedYearCapToRollBack(Date date){
		if(date == null){
			return null;
		}
		Date returnDate = date;
		int currentYear = getCurrentYear();
		int yearCapToConvertBack = currentYear + ADDITIONAL_YEAR_TO_ROLL_BACK;
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(returnDate);
		int yearOfReturnDate  = calendar.get(Calendar.YEAR);
		if(yearOfReturnDate > yearCapToConvertBack){
			returnDate = DateUtils.addYear(returnDate,NUMBER_OF_ROLL_BACK_YEAR);
		}
		return returnDate;
	}
	
	public static boolean isAgeUnder(Date birthDate, int ageToCompare){
	    if(ageToCompare > getCurrentAge(birthDate)){
	        return true;
	    }
	    return false;
	}
}
