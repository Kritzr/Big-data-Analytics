import pandas as pd
from sklearn.tree import DecisionTreeClassifier, plot_tree
import matplotlib.pyplot as plt
from sklearn.metrics import accuracy_score
from sklearn.datasets import load_iris

iris = load_iris()
X, y = iris.data, iris.target

clf = DecisionTreeClassifier(criterion="gini", random_state=1)
clf.fit(X, y)
y_pred = clf.predict(X)

print("Accuracy: ", accuracy_score(y, y_pred))

plt.figure(figsize=(12, 8))
plot_tree(clf, filled=True, feature_names=iris.feature_names, class_names=iris.target_names)
plt.show()