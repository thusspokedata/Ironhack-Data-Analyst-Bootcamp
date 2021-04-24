![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Data cleaning and wrangling

For this lab, we will be using the `Marketing Customer Value Analysis` database from before. Feel free to build on top of your previous notebooks, since there could be overlap with variable names.

Note: Please use your latest version of the `Marketing Customer Value Analysis` database which should've been cleaned from the previous labs.
Link to the initial raw data: https://github.com/student-IH-labs-and-stuff/BER-DAFT-MAR21/blob/main/Labs/marketing_customer_analysis.csv

### Instructions

This lab will focus on data cleaning and wrangling, this is a crucial step in the EDA process.

1. Remove the outliers in the dataset using one of the methods we've discussed by defining a function and applying it to the dataframe.
2. Create a copy of the dataframe for the data wrangling.
3. Normalize the continuous variables.
4. Encode the categorical variables
5. Transform the time variables (`day`, `week` and `month`) to integers.
6. Since the model will only accept numerical data, check and make sure that every column is numerical, if some are not, change it using encoding.

**Hint for Categorical Variables**

- Use either encoding or `get_dummies` to deal with the categorical variables (example below):

```python
data["coverage"] = data["coverage"].map({"Basic" : 0, "Extended" : 1, "Premium" : 2})
# given that column "coverage" in the dataframe "data" has three categories:
# "basic", "extended", and "premium" and values are to be represented in the same order.
