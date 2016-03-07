module Statistics
  def in_this_week?
    starting = Date.today.beginning_of_week
    ending = Date.today.end_of_week
    date <= ending && date >= starting
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def daily_total
      current_day = Time.now.day
      current_month = Time.now.mon
      daily = []
      self.all.each do |x|
        daily << x.amount if x.date.day == current_day && x.date.mon == current_month
      end
      daily.sum
    end

    def weekly_total
      # weekly = []
      # self.all.each do |entry|
      #   weekly << entry.amount if entry.date <= ending && entry.date >= starting
      # end
      weekly = self.all.select &:in_this_week?
      weekly = weekly.map &:amount
      weekly.sum
    end

    def monthly_total
      current_month = Time.now.mon
      current_year = Time.now.year
      monthly = []
      self.all.each do |x|
        monthly << x.amount if x.date.mon == current_month && x.date.year == current_year
      end
      monthly.sum
    end
  end

end
