# Wine_Quality_Analysis

The purpose of this analysis is to indicate which features of wine are the most important in determining the quality of wine. Using a machine learning model, we aim to convey what it takes to create the highest-quality, most successful, and most marketable wine.

## Analysis
### Machine Learning Models
Please see DNN_Classification_WineQuality_Red_Hyper_Tuning.ipynb and DNN_Classification_WineQuality_White_Hyper_Tuning.ipynb for our Deep Learning Neural Network machine learning models on both red and white wines, respectively.

### Pre-Processing
Please see the various files in Resources/Preprocessing for our initial pre-processing and data cleanup.

## Questions We Seek to Answer
We maintain a handful of questions we seek to answer once our analysis is thoroughly complete.

- Which features are most important in indicating quality of wine?
- What is our goal for our machine learning model's accuracy on the test data? If we can't reach this goal, what is the highest accuracy we can achieve?
- Which features do not play an important role in wine quality scoring?
- What model is best at predicting outcomes?
- *Why* is the model that is *best* at predicting outcomes the best at doing so?

## Link to Dashboard
https://public.tableau.com/app/profile/scott.freeland/viz/Wine_Quality_Analysis/Wine_Quality_Analysis?publish=yes

### SVM Model

**Support Vector Machine (SVM)**, like logistic regression, is a binary classifier: It can categorize samples into one of two categories (for example, yes or no). This supervised machine learning algorithm is powerful for classification problems. Originaly we tried to create separate bins for different levels of Wine Quality based on the Dataset, but ultimately we wanted to focus on Wine Quality Level scores above 7.

The SVM Model relies on a kernel to transform the data, and based on the transformation, it finds an optimal way to separate the data according to the labels. For example, the model would take features into account (for example, alcohol level, levels of sulphates, ph, and total volatile acidity levels) and decide whether the wine is a good quality wine or not. The outcome is binary because the only possible options are to classify wines as such.

After standardizing the feature variables in both the training and testing data, our dataset is ready for both models. First, we trained and evaluated our SVM. As seen on the Tableau Dashboard and Correlation Matrix below, we see that each type of Wine has similar features that are better predictors of Quality in the overall wine score. Because of this rationale and first having lower accuracy score, we decided to nullify and drop the features that have negative correlation and affect our overall Wine Quality score.

***Bar Chart Showing the Correlation for Different Features influencing Overall Wine Quality Score***

![Screen Shot 2022-02-27 at 10 16 45 PM](https://user-images.githubusercontent.com/90523595/155921140-d297de2b-a63a-4eb3-a999-af45d5390cdb.png)

The graphs above show more intuitively the features that weigh more than others in predicting wine quality for each type of wine.

**Analysis, Findings, and Outcomes** 

Despite these advantages, SVMs are limited in their potential and can still miss critical features and high-dimensionality relationships that a well-trained deep learning model could find.

The only noticeable difference between the two models is implementation; the amount of code required to build and train the SVM is notably less than the comparable deep learning model. As a result, many data scientists will prefer to use SVMs by default, then turn to deep learning models, as needed.

- SVM works by separating the two classes in a dataset with the widest possible margins. The margins, however, are soft and can make exceptions for outliers.
- SVMs are less prone to overfitting because they are trying to maximize the distance, rather than encompass all data within a boundary.
- SVMs perform one task and one task very well—they classify and create regression using two groups
- The final accuracy on testing dataset of the SVM model is 0.86 for Red Wine
- The final accuracy on testing dataset of the SVM model is 0.78 for White Wine 
- By tuning the hyper-parameters, the performance of the SVM model accuracy score increased drastically. 


In conclusion, alcohol, citric acid, ph levels, and sulphates are the top important properties that can make a quality wine. Higher quality wines have higher levels of alcohol on average, lower levels of citric acid on average, higher ph levels, and higher levels of sulphates on average. Despite these findings, we also can infer that a better and more intricate model like the Neural Network model have better performance outcomes, but tend to have more time in creating, training, and executing the model. The pay off in this sense is that one is better able to predict Quality more accurately for Red and White Wine. Further research should include a larger data set, the brands of wine were omitted because of any bias, but including more types of wine variety such as Bubbles and Rosé would help better train and fine tune this model. This would also help see specifically which physiochemical features are better quality predictors for specific types of wine. 
