import matplotlib.pyplot as plt

def createDataPlot(index, df, key):
    data = {}
    for k in range(0, len(index)): 
        data[index[k]] = df.iloc[k][key]

    return list(data.values()), list(data.keys())

def barPlot(name, value, xlabel = '', ylabel = '', title = ''):
    # plt.style.available
    fig, ax = plt.subplots()
    plt.style.use('seaborn-dark')
    labels = ax.get_xticklabels()
    plt.setp(labels, rotation=90, horizontalalignment='right')
    ax.set(xlabel = xlabel, ylabel = ylabel, title= title)
    ax.axhline(max(value), ls='--', color='r')
    ax.bar(name, value)


def pareto_plot(df, x=None, y=None, title=None, show_pct_y=False, pct_format='{0:.0%}'):
    xlabel = x
    ylabel = y
    tmp = df.sort_values(y, ascending=False)
    x = tmp[x].values
    y = tmp[y].values
    weights = y / y.sum()
    cumsum = weights.cumsum()
    
    fig, ax1 = plt.subplots()
    ax1.bar(x, y)
    ax1.set_xlabel(xlabel)
    ax1.set_ylabel(ylabel)

    ax2 = ax1.twinx()
    ax2.plot(x, cumsum, '-ro', alpha=0.5)
    ax2.set_ylabel('', color='r')
    ax2.tick_params('y', colors='r')
    
    vals = ax2.get_yticks()
    ax2.set_yticklabels(['{:,.2%}'.format(x) for x in vals])

    # hide y-labels on right side
    if not show_pct_y:
        ax2.set_yticks([])
    
    formatted_weights = [pct_format.format(x) for x in cumsum]
    for i, txt in enumerate(formatted_weights):
        ax2.annotate(txt, (x[i], cumsum[i]), fontweight='heavy')    
    
    if title:
        plt.title(title)
    
    plt.tight_layout()
    plt.show()
