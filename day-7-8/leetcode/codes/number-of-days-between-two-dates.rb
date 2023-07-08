# Number of Days Between Two Dates
# Solution 1
require 'date'

def days_between_dates(date1, date2)
    (parse_date(date1) - parse_date(date2)).to_i.abs
end

def parse_date(date)
    Date.parse(date)
end

# Solution 2
require 'date'

def days_between_dates(date1, date2)
    parse_date = -> (date) {
        Date.parse(date)
    }

    (parse_date.call(date1) - parse_date.call(date2)).to_i.abs
end