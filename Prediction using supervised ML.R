#GRIP-FEB'21 
#Task-1 SHRUTIKA JOSHI

#Importing the dataset
scores <- read.csv("D:\\DSBA_GRIP\\Prediction using Supervised ML.csv")
scores
#Creating objects
marks <- scores$Scores
hours <- scores$Hours
#Linear regression
model <- lm(marks~hours, data = scores)
summary(model)
#Graphical representation-
plot(scores, col = "dark blue")
abline(model, col = "black")
#predicting -
hours=data.frame(hours)
predict_score=predict(model,hours)
#Predicting score if the student studies for 9.25hours per day-
score_predicted=data.frame(hours=9.25)
predict(model, score_predicted)
