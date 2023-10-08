#Answer to question 2.1.2a
from sklearn.preprocessing import StandardScaler
# wine_data[:,1]>20

# my_array[(my_array > 5)]
filter_acid_wine_data = wine_data[wine_data[:,1]>20]

def vfilter(item):
    return item < 20
def dfilter(item):
    return item < 10
def afilter(item):
    return item < 25

vdata= list(filter(vfilter,volatile_acidity[0]))
ddata = list(filter(dfilter,density[0]))
adata = list(filter(afilter,alcohol[0]))

wine_data_filtered = [(volatile_acidity[1], vdata),(density[1],ddata), (alcohol[1], adata)]

wine_data['X'][1] =  wine_data_filtered[0][1]
wine_data['X'][7] =  wine_data_filtered[1][1]
wine_data['X'][12] =  wine_data_filtered[2][1]
print(wine_data_filtered)
scaler = StandardScaler()
print(scaler.fit(wine_data_filtered[0][1]))

wine_data_filtered_standardized = None
