seqD <- seq(as.Date('2000-02-18'),as.Date('2021-03-31'), by = 16)

OutputTimeSeries <- data.frame(seqD)

rio::export(OutputTimeSeries, 'Date_seq_to_gee.csv')
rio::export(OutputTimeSeries, 'Date_seq_to_gee.txt')

