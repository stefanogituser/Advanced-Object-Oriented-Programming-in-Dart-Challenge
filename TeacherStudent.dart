// Create two classes, one for a student and one for a teacher.
// The student class should have a name, age and grade level.
class Student{
  int studentID;
  String name;
  int age;
  int gradeLevel;
  

  // Constructor
  Student(this.studentID, this.name, this.age,this.gradeLevel){
    
  }
  
  // Create a method in the student class that prints out the student's information
  void printStudentInfo(){
    print("Student Name: ${name}, is aged ${age} and is in grade ${gradeLevel}");
  }
}

// The teacher class should have a name, age, and the subject they teach.
class Teacher{
  int teacherID;
  String name;
  int age;
  String subject;
  
  // Constructor
  Teacher(this.teacherID, this.name, this.age, this.subject){}
  
  // Create a method in the teacher class that prints out the teacher's information.
  void printTeacherInfo(){
    print("Teacher Name: ${name}, is aged ${age} and teaches  ${subject}");
  }
    
}

// Create a third class that creates a student and teacher object, and calls the methods 
// to print out the information.
class TeacherStudent{
    Student student;
    Teacher teacher;

    TeacherStudent(this.teacher, this.student){}
  
  // A method calling the two individual methods to print
  void printTeacherAndStudentInfo(){
    teacher.printTeacherInfo();
    student.printStudentInfo();
  }
}
    
void main() {
  var teacher = Teacher(2,'Mike',49,'Geography');
    var student = Student(1,'Steve',34, 7);  
  var teacherStudent = TeacherStudent(teacher,student);
  teacherStudent.printTeacherAndStudentInfo();
}
