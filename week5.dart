class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

class School {
  void printStudentAndTeacherInfo(Student student, Teacher teacher) {
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  Student student = Student('John Doe', 15, 10);
  Teacher teacher = Teacher('Ms. Smith', 35, 'Mathematics');

  School school = School();
  school.printStudentAndTeacherInfo(student, teacher);
}
