import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

sns.set_theme(style = "whitegrid")

# Configure plot
sns.plotting_context()
sns.set_context()

sns.axes_style()
sns.set_style


tips = sns.load_dataset("tips")
dots = sns.load_dataset("dots")
iris = sns.load_dataset("iris")

df = pd.read_csv('./r/helicopterexerc/elidf2.csv')

def boxPlotAll(x):
    print(x.head(10))
    sns.boxplot(data = x, orient = "h", palette = "Set2")


def boxPlotSingle(x, column):
    print(x.head(10))
    sns.boxplot(x = x[column], color='#99c2a2')

def boxPlotCategorical():
    print(tips.head(3))
    sns.boxplot(
        x = "day",
        y = "total_bill",
        data = tips)

def boxPlotNested():
    print(tips.head(3))
    sns.boxplot(
        x="day",
        y="total_bill",
        hue="smoker",
        data=tips,
        palette="Set3")

def swarmPlot():
    sns.boxplot(x="day", y="total_bill", data=tips)
    sns.swarmplot(x="day", y="total_bill", data=tips, color=".25")

def test():
    ax = sns.boxplot(x="day", y="total_bill", data=tips)
    ax = plt.axhline(y = 30, color = 'r', linestyle = '-')

if __name__ == '__main__':
    boxPlotSingle(df, 'ft')
    # boxPlotCategorical()
    # boxPlotNested()
    # boxPlotAll(df)
    # swarmPlot()
    # test()



    plt.show()

