# Number of Days Between Two Dates
# Solution 1
require 'date'

def days_between_dates(date1, date2)
    # 日付差分の計算
    (parse_date(date1) - parse_date(date2)).to_i.abs
end

# 日付オブジェクト生成
def parse_date(date)
    Date.parse(date)
end

# Solution 2
require 'date'

def days_between_dates(date1, date2)
    # 日付オブジェクト生成
    parse_date = -> (date) {
        Date.parse(date)
    }

    # 日付差分の計算
    (parse_date.call(date1) - parse_date.call(date2)).to_i.abs
end