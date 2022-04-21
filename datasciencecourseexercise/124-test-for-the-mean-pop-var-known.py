from statistics import mean
import pandas as pd
import numpy as np

data = (117.313, 104.002, 113.038 , 101.936, 84.560, 
113.136, 80.740, 100.536, 105.052, 87.201, 91.986, 94.868,
90.745, 102.848, 85.927, 112.276, 108.637, 96.818, 92.307, 
114.564, 109.714, 108.833, 115.295, 89.279, 81.720, 89.344, 
114.426, 90.410, 95.118, 113.382)

# The null hyp. the salary is
h0mu0 = 113000

# Mean
smean = np.mean(data)

# stddev
sdpop = 15000
sdsample = np.std(data)

# Z score


# Dataframe
df = pd.DataFrame(data = data, columns = ['data'])

# Standardization to standard normal dist.
df['minusmean'] = df['data'] - smean
df['standardized'] = df['minusmean'] / sdsample


if __name__ == '__main__':
    # print(df)
    # print(np.std(df['standardized']))
    print(df)
    print(np.mean(df['data']))
    print(np.std(df['data']))