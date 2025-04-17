from django.db import models

class Quiz(models.Model):
    Question=models.CharField(max_length=100)
    Option1=models.CharField(max_length=100)
    Option2=models.CharField(max_length=100)
    Option3=models.CharField(max_length=100)
    Option4=models.CharField(max_length=100)
    correctans=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    class Meta:
        db_table="quiz1"

class QuizGSHindi(models.Model):
    Question=models.CharField(max_length=100)
    Option1=models.CharField(max_length=100)
    Option2=models.CharField(max_length=100)
    Option3=models.CharField(max_length=100)
    Option4=models.CharField(max_length=100)
    correctans=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    class Meta:
        db_table="quizgshindi"

class QuizGSMarathi(models.Model):
    Question=models.CharField(max_length=100)
    Option1=models.CharField(max_length=100)
    Option2=models.CharField(max_length=100)
    Option3=models.CharField(max_length=100)
    Option4=models.CharField(max_length=100)
    correctans=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    class Meta:
        db_table="quizgsmarathi"

class QuizFS(models.Model):
    Question=models.CharField(max_length=100)
    Option1=models.CharField(max_length=100)
    Option2=models.CharField(max_length=100)
    Option3=models.CharField(max_length=100)
    Option4=models.CharField(max_length=100)
    correctans=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    class Meta:
        db_table="quizfs"

class QuizFA(models.Model):
    Question=models.CharField(max_length=100)
    Option1=models.CharField(max_length=100)
    Option2=models.CharField(max_length=100)
    Option3=models.CharField(max_length=100)
    Option4=models.CharField(max_length=100)
    correctans=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    class Meta:
        db_table="quizfa"

class QuizCPR(models.Model):
    Question=models.CharField(max_length=100)
    Option1=models.CharField(max_length=100)
    Option2=models.CharField(max_length=100)
    Option3=models.CharField(max_length=100)
    Option4=models.CharField(max_length=100)
    Option5=models.CharField(max_length=100)
    correctans=models.CharField(max_length=100)
    description=models.CharField(max_length=1000)
    class Meta:
        db_table="quizcpr"