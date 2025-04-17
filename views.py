from django.shortcuts import render
from Radhee.models import Quiz, QuizCPR, QuizFA, QuizFS, QuizGSMarathi
from Radhee.models import QuizGSHindi

def quizonline(request):
    results = Quiz.objects.all()
    return render(request, 'quiz.html', {"Quiz":results})   

def homepage(request):
    return render(request, 'index.html')

def userinfo(request):
    return render(request, 'userinfo.html')

def userinfofs(request): 
    return render(request, 'userinfofs.html')

def userinfocpr(request):
    return render(request, 'userinfocpr.html')

def userinfofa(request):
    return render(request, 'userinfofa.html')

def quizhindi(request):
    results = QuizGSHindi.objects.all()
    return render(request, 'quiz-hindi.html', {"QuizGSHindi":results})

def quizgsmarathi(request):
    results = QuizGSMarathi.objects.all()
    return render(request, 'quiz-marathi.html', {"QuizGSMarathi":results})
    
def quizfs(request):
    results = QuizFS.objects.all()
    return render(request, 'quizfs.html', {"QuizFS":results})

def quizfa(request):
    results = QuizFA.objects.all()
    return render(request, 'quizfa.html', {"QuizFA":results})

def quizcpr(request):
    results = QuizCPR.objects.all()
    return render(request, 'quizcpr.html', {"QuizCPR":results})