import aggregate as agg

# process all file and saves in a single dataframe
# run only the first time
#allData = agg.import_data()
# run this to update new files
data_updated = agg.update_data('allData.csv')
