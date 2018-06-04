package nova.devday;

import java.util.Calendar;

import ch.ivyteam.ivy.environment.Ivy;

public class CronJobService {

	private static final String EVERY_DAY = "0";
	private static final String COMMA = ",";
	private static final String COLON = ":";
	private static final String DAY_CRAWLING_DATA = "com_nova_devday_day_crawling_data";
	private static final String TIME_CRAWLING_DATA = "com_nova_devday_time_crawling_data";

	public CronJobService() {
	}

	public static CronJobService createInstance() {
		return new CronJobService();
	}

	public boolean checkToRunCrawlingData() {
		try {
			Calendar calendar = Calendar.getInstance();
			int currentDay = calendar.get(Calendar.DAY_OF_MONTH);
			int currentHour = calendar.get(Calendar.HOUR_OF_DAY);
			int currentMinute = calendar.get(Calendar.MINUTE);

			String[] daysRunCrawling = Ivy.var().get(DAY_CRAWLING_DATA).trim().split(COMMA);
			String[] timesRunCrawling = Ivy.var().get(TIME_CRAWLING_DATA).trim().split(COMMA);

			if (daysRunCrawling.length == 1 && daysRunCrawling[0].equalsIgnoreCase(EVERY_DAY)) {
				return checkTimeRunCrawlingData(currentHour, currentMinute, timesRunCrawling);
			} else {
				for (String dayDownload : daysRunCrawling) {
					if (String.valueOf(currentDay).equalsIgnoreCase(dayDownload.trim())) {
						return checkTimeRunCrawlingData(currentHour, currentMinute, timesRunCrawling);
					}
				}
			}
		} catch (Exception e) {
			Ivy.log().error(e.getMessage(), e);
		}
		return Boolean.FALSE;
	}

	private boolean checkTimeRunCrawlingData(int currentHour, int currentMinute, String[] timesRunCrawling) {
		for (String each : timesRunCrawling) {
			String[] timeRunCrawling = each.trim().split(COLON);
			if (String.valueOf(currentHour).equalsIgnoreCase(timeRunCrawling[0]) && currentMinute == Integer.parseInt(timeRunCrawling[1])) {
				return Boolean.TRUE;
			}
		}
		return Boolean.FALSE;
	}

	public boolean runCrawlingDataForDemo() {
		return Boolean.TRUE;
	}
}
