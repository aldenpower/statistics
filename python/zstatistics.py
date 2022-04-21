import pandas as pd
import numpy as np
import scipy.stats as stats

# Data
data = np.array([6, 7, 7, 12, 13, 13, 15, 16, 19, 22])
datarnd = pd.DataFrame(np.random.randint(0, 10, size=(5, 3)), columns=['A', 'B', 'C'])

# Z table
ztable = pd.read_csv('/home/mr-alden/reps/statistics/ztable.csv')

if __name__ == '__main__':
    # Calculate the z score for the standard normal dist by a percent
    print(stats.norm.ppf(.70194))
    # Calculate the p value for the standard normal dist by a z score value
    print(stats.norm.cdf(-1.39))

    # Zscore with scipy
    print(stats.zscore(data))

    # Zscore applied to a Dataframe
    print(datarnd.apply(stats.zscore))

    print(ztable)