import pandas as pd

#fieldnames = ['Adversary', 'Technique','Technique ID', 'SubTechnique','Data Source','API_ID']
AdvRawData = pd.read_csv('adversaries.csv')
dwycsv = AdvRawData['API_ID'].groupby(AdvRawData['SubTechnique']).value_counts().nlargest(5)
print(dwycsv)