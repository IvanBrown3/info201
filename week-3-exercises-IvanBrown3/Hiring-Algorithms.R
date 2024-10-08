# Hiring Algorithms

# Your task is to create a program that will evaluate whether job applicants should move on in the job search process based on their grades in 2 data science classes and their overall GPA.

# Student 1
# Grades: Class 1 3.6, Class 2 3.6, Overall GPA  3.6
# Make a vector of these 3 grades and assign it the variable below
student1_grades <- c(3.6, 3.6, 3.6)

# Student 2
# Grades: Class 1  2.9, Class 2  4.0, Overall GPA  3.5
# Make a vector of these 3 grades and assign it the variable below
student2_grades <- c(2.9, 4.0, 3.5)

# Student 3
# Grades: Class 1 3.9, Class 2  3.1, Overall GPA  3.4
# Make a vector of these 3 grades and assign it the variable below
student3_grades <- c(3.9, 3.1, 3.4)

# Now make a function that will report whether applicants should move on in the search of not
# For the first analyze_applicant1() function, applicants should only be accepted if their class average is over 3.5 and overall GPA is over 3.5.

analyze_applicant1 <- function(grades){
  class1 <- grades[1] # Index the first item in the grades vector
  class2 <- grades[2] # Index the second item in the grades vector
  overall_gpa <- grades[3] # Index the third item in the grades vector

  
  # Add an if / else conditional here
  if (overall_gpa > 3.5 & mean(c(class1, class2)) > 3.5) {
    print("The applicant should move on to the interview stage.")
  }
  else {
    print("The applicant should be rejected.")
  }
}

# Test your analyze_applicant1() function
# Should be accepted
analyze_applicant1(student1_grades)

# Test your analyze_applicant1() function
# Should be rejected
analyze_applicant1(student2_grades)

# For the second analyze_applicant2() function, applicants should be rejected if any of their class grades or their overall GPA is lower than 3.0.

analyze_applicant2 <- function(grades){
  class1 <-  grades[1]# Index the first item in the grades vector
  class2 <-  grades[2]# Index the second item in the grades vector
  overall_gpa <- grades[3] # Index the third item in the grades vector
  
  # Add an if / else conditional here
  if (class1 < 3.0 | class2 < 3.0| overall_gpa < 3.0) {
    print("The applicant should be rejected.")
  }
  else{
    print("The applicant should move on to the interview stage")
  }
}

# Test your analyze_applicant2() function
# Should be accepted
analyze_applicant2(student3_grades)

# Should be rejected
analyze_applicant2(student2_grades)

# For the third analyze_applicant3() function, applicants should be accepted if they earned a 4.0 in any class or overall GPA

analyze_applicant3 <- function(grades) {
  class1 <- grades[1] # Index the first item in the grades vector
  class2 <- grades[2] # Index the second item in the grades vector
  overall_gpa <- grades[3] # Index the third item in the grades vector
  
  # Add an if / else conditional here
  if (class1 == 4.0 | class2 == 4.0 | overall_gpa == 4.0){
    print("This applicant should be accepted.")
  }
  else{
    print("This applicant should be rejected")
  }
}

# Test your analyze_applicant3() function
# Should be rejected
analyze_applicant3(student3_grades)

# Should be accepted
analyze_applicant3(student2_grades)
# Your Turn!

# Now talk with your group and come up with your own custom function for evaluating candidates
# What do you think is the most fair and/or most efficient way of judging applicants?
# You can also add in an "else if" statement that provides an option other than accept or reject

revised_analyze_applicant <- function(grades){
  class1 <- grades[1]
  class2 <- grades[2]
  overall_gpa <- grades[3]
  overall_class_gpa <- class1 + class2
  
  if (sd(overall_class_gpa > 0.1, na.rm = TRUE)){
    print("Hire this man")
  }else{
    print("dont hire this fool")
  }
  
}







# Test your revised_analyze_applicant() function
# Student 1
revised_analyze_applicant(student1_grades)
# Student 2
revised_analyze_applicant(student2_grades)
# Student 3
revised_analyze_applicant(student3_grades)

