# Predict the flower class!

<img src="iris.jpg" alt="drawing" align="right" width="300px;"/>

1. Import the dataset `iris_dirty.csv` from [here](https://github.com/student-IH-labs-and-stuff/BER-DAFT-MAR21/blob/main/Labs/iris_dirty.csv) into a Pandas dataframe. Check the Pandas documentation of `read_csv()` and use the column names `sepal_length`, `sepal_width`, `petal_length`, `petal_width` and `class` when you read in the data.
2. Explore the data with the known Pandas functions `head()`, `info()`, `describe()`, `count()`, `value_counts()` (for all columns). Watch for missing values, duplicates, spelling errors, non-uniform units, columns with datatypes they shouldn't have etc.
3. Substitute missing values with the column mean. Check/remove duplicates. Correct possible spelling errors.
4. Bring all columns to centimeter length. Before, transform any column to numeric if necessary.
5. Check for outliers with `.describe()` or means of plotting. Think about the appropriate way to correct for possible outliers and perform that correction.
6. Plot a correlation matrix with a heatmap between the numeric features.
7. Model the relationship between our features (the four numeric flower metrics) and the label (`class`) with **Logistic Regression** using `LogisticRegression()` from the `sklearn.linear_model` module. For the purpose of model validation, use the known train-test-split method with a size parameter of 0.3. Calculate the predicted labels, the **accuracy score** of `y_test` and `y_predicted` and plot a confusion matrix of the two.
8. BONUS: Use all the rows of your data and your trained model to predict the flower classes. Then create pairwise scatterplots between all four features (6 in total) in which you color the dots depending which predicted flower class they belong to. Try to make out distinct clusters in those plots.

# Lab | Imbalanced data

We will be using the `files_for_lab/customer_churn.csv` dataset to build a churn predictor.

### Instructions

1. Load the dataset and explore the variables.
2. We will try to predict variable `Churn` using a logistic regression on variables `tenure`, `SeniorCitizen`,`MonthlyCharges`.
3. Extract the target variable.
4. Extract the independent variables and scale them.
5. Build the logistic regression model.
6. Evaluate the model.
7. Even a simple model will give us more than 70% accuracy. Why?
8. **Synthetic Minority Oversampling TEchnique (SMOTE)** is an over sampling technique based on nearest neighbors that adds new points between existing points. Apply `imblearn.over_sampling.SMOTE` to the dataset. Build and evaluate the logistic regression model. Is it there any improvement?
9. **Tomek links** are pairs of very close instances, but of opposite classes. Removing the instances of the majority class of each pair increases the space between the two classes, facilitating the classification process. Apply `imblearn.under_sampling.TomekLinks` to the dataset. Build and evaluate the logistic regression model. Is it there any improvement?
