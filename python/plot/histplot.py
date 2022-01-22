from asyncio.proactor_events import _ProactorBaseWritePipeTransport
from turtle import pen
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns



penguins = sns.load_dataset("penguins")


def histSingle(x, column, binwidth = None, kde = False):
    sns.histplot(data = x, x = column, binwidth = binwidth, kde = kde, fill = False)
    # sns.histplot(data = x, y = column)


def histCat():
    sns.histplot(data = penguins, x= "flipper_length_mm", hue="species", fill = True)


if __name__ == '__main__':
    print(penguins.head(10))
    print(penguins['species'].unique())


    sns.set_theme(style = "darkgrid")

    histSingle(penguins, 'flipper_length_mm', kde = False)
    
    plt.show()