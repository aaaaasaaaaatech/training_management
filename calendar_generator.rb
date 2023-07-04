# require 'net/http'
# require 'icalendar'
# holiday_ical = Net::HTTP.get(URI::parse("https://calendar.google.com/calendar/ical/ja.japanese%23holiday%40group.v.calendar.google.com/public/basic.ics")).force_encoding("UTF-8")
# cals = Icalendar.parse(holiday_ical)
# events = cals.first.events

# events.map{|e| [e.dtstart, e.summary]}
# => [[Mon, 23 Sep 2024, "秋分の日 振替休日"], [Sun, 22 Sep 2024, "秋分の日"], 
# [Sat, 23 Sep 2023, "秋分の日"], [Mon, 15 Jul 2024, "海の日"], 
# [Mon, 17 Jul 2023, "海の日"], [Mon, 29 Apr 2024, "昭和の日"],
# [Sat, 29 Apr 2023, "昭和の日"], [Wed, 20 Mar 2024, "春分の日"], 
# [Tue, 21 Mar 2023, "春分の日"], [Mon, 04 Nov 2024, "文化の日 振替休日"], 
# [Sun, 03 Nov 2024, "文化の日"], [Fri, 03 Nov 2023, "文化の日"],
# [Thu, 03 Nov 2022, "文化の日"], [Mon, 16 Sep 2024, "敬老の日"], 
# [Mon, 18 Sep 2023, "敬老の日"], [Mon, 08 Jan 2024, "成人の日"], 
# [Mon, 09 Jan 2023, "成人の日"], [Fri, 03 May 2024, "憲法記念日"], 
# [Wed, 03 May 2023, "憲法記念日"], [Mon, 12 Feb 2024, "建国記念の日 振替休日"],
# [Sun, 11 Feb 2024, "建国記念の日"], [Sat, 11 Feb 2023, "建国記念の日"],
# [Sun, 11 Aug 2024, "山の日"], [Fri, 11 Aug 2023, "山の日"], 
# [Fri, 23 Feb 2024, "天皇誕生日"], [Thu, 23 Feb 2023, "天皇誕生日"],
# [Sat, 23 Nov 2024, "勤労感謝の日"], [Thu, 23 Nov 2023, "勤労感謝の日"], 
# [Wed, 23 Nov 2022, "勤労感謝の日"], [Mon, 01 Jan 2024, "元日"],
# [Sun, 01 Jan 2023, "元日"], [Mon, 12 Aug 2024, "休日 山の日"],
# [Mon, 02 Jan 2023, "休日 元日"], [Mon, 14 Oct 2024, "スポーツの日"],
# [Mon, 09 Oct 2023, "スポーツの日"], [Mon, 10 Oct 2022, "スポーツの日"],
# [Sat, 04 May 2024, "みどりの日"], [Thu, 04 May 2023, "みどりの日"], 
# [Mon, 06 May 2024, "こどもの日 振替休日"], [Sun, 05 May 2024, "こどもの日"],
# [Fri, 05 May 2023, "こどもの日"], [Mon, 19 Sep 2022, "敬老の 日"], 
# [Wed, 23 Feb 2022, "天皇誕生日"], [Wed, 04 May 2022, "みどりの日"], 
# [Fri, 23 Sep 2022, "秋分の日"], [Fri, 11 Feb 2022, "建国記念の日"], 
# [Thu, 11 Aug 2022, "山の日"], [Sat, 01 Jan 2022, "元日"], 
# [Thu, 05 May 2022, "こどもの日"], [Fri, 29 Apr 2022, "昭和の日"], 
# [Mon, 21 Mar 2022, "春分の日"], [Mon, 10 Jan 2022, "成人の日"],
# [Mon, 18 Jul 2022, "海の日"], [Tue, 03 May 2022, "憲法記念日"]]

require 'date'

# class Calendar
class Calendar
  DEFAULT_DATE = Date.today

  attr_reader :target_date

  def initialize(target_date = DEFAULT_DATE)
    @target_date = target_date
  end

  def print_calendar
    # 中央揃えした年月を出力
    puts @target_date.strftime('%B %Y').center(20)

    # 曜日一覧を出力
    puts 'Su Mo Tu We Th Fr Sa'

    # 月末と月初の日付を取得
    this_year = @target_date.year
    this_month = @target_date.month
    first_day = Date.new(this_year, this_month, 1)
    last_day = Date.new(this_month, this_month, -1)

    # 冒頭の空白部分を出力
    first_day_wday = first_day.wday
    blank = '   ' * first_day_wday
    print blank

    # カレンダーの日付部分を出力
    print_date(last_day, first_day_wday)
  end

  private

  def print_date(last_day, first_day_wday)
    (1..last_day.day).each do |day|
      printf('%2d ', day)
      puts "\n" if ((first_day_wday + day) % 7).zero?
    end
    puts "\n"
  end
end

# 今月のカレンダー
this_month_calendar = Calendar.new
this_month_calendar.print_calendar