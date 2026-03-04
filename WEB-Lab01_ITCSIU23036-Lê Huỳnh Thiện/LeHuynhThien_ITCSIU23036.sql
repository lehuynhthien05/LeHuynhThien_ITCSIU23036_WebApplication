create table student(
    studentId   int primary key,
    studentName varchar(50) not null,
    dob         date        not null,
    major       varchar(50) not null,
);

create table student_course(
    courseId  int not null,
    studentId int not null,
    primary key (courseId, studentId),
    foreign key studentId references student(studentId)
    foreign key courseId references course(courseId)
);

create table course(
    courseId   int primary key not null,
    courseName varchar(50) unique,
);

create table lecturer(
    lecturerId   int primary key not null,
    lecturerName varchar(50),
    departmentId int             not null,
    foreign key departmentId references department(departmentId)
);

create table course_lecturer(
    lecturerId int not null,
    courseId   int not null,
    primary key (lecturerId, courseId),
    foreign key lecturerId references lecturer(lecturerId),
    foreign key courseId references course(courseId)
);

create table department(
    departmentId   int primary key not null,
    departmentName varchar(50)
);