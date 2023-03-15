import aggregate as agg

# insert the date array
date = [5, 8, 10]
# insert the month array
month = [3, 3, 3]
# insert the day of the week array
dow = ['Sun', 'Wed', 'Fri']

years = [2023,2023,2023]

# keep it as it is
v = [1, 3]
# set the ymax limits so that all the plots have same size array
# first run with value [None,None]
# then looking at the plots, decide the ymax value for PM2.5 mass and number concentration respectively
ymax = [None, None]
for d1, m, day , year in zip(date, month, dow ,years):
    for var, ym in zip(v, ymax):
        agg.weeklyplots(d1, m, day, var, ym, year)
