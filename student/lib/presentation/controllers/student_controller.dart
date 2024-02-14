import 'package:get/get.dart';
import 'package:student/data/model/student.dart';
import 'package:student/data/repository/student_repository.dart';

class StudentController extends GetxController {
  RxList<StudentModel> allStudent = <StudentModel>[].obs;

  StudentRepository studentRepository = StudentRepository();

  @override
  void onInit() {
    super.onInit();
    fetchAllStudent();
  }

  fetchAllStudent({String? query}) async {
    var student = await studentRepository.getData(query ?? '');
    allStudent.value = student;
  }

  addStudent(StudentModel studentModel) {
    studentRepository.addData(studentModel);
    fetchAllStudent();
  }

  updateStudent(StudentModel studentModel) {
    studentRepository.updateData(studentModel);
    fetchAllStudent();
  }

  deleteStudent(int id) {
    studentRepository.deleteData(id);
    fetchAllStudent();
  }
}
