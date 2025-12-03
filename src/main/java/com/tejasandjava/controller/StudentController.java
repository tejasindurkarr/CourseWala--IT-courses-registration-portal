package com.tejasandjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tejasandjava.entity.Student;
import com.tejasandjava.repo.StudentRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    // Show all students (Admin view)
    @GetMapping("/students")
    public String getAllStudents(HttpSession session, Model model) {

        Student loginStudent = (Student) session.getAttribute("loginStudent");

        if (loginStudent == null) {
            return "redirect:/login";     // not logged in
        }

        if (!loginStudent.getRole().equals("ADMIN")) {
            return "redirect:/dashboard";  // student cannot access students list
        }

        List<Student> students = studentRepository.findAll();
        model.addAttribute("students", students);
        return "students";
    }


    // Registration form
    @GetMapping({"/registration", "/student-registration"})
    public String studentRegistrationForm(Model model) {
        model.addAttribute("student", new Student());
        return "student-registration";
    }

    // Save new student
    @PostMapping("/register")
    public String register(Student student, Model model) {
    	
    	student.setRole("STUDENT");

        studentRepository.save(student);
        model.addAttribute("msg", "Student Registered Successfully!");
        model.addAttribute("student", new Student()); // reset form
        return "student-registration";
    }

    // Edit student form
    @GetMapping("/edit/{id}")
    public String editStudent(@PathVariable Integer id, Model model) {
        Student student = studentRepository.findById(id).orElse(null);
        model.addAttribute("student", student);
        return "edit"; // edit.jsp page
    }

    // Update student
    @PostMapping("/update")
    public String updateStudent(Student student) {
        studentRepository.save(student);
        return "redirect:/students";
    }

    // Delete student
    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable Integer id) {
        studentRepository.deleteById(id);
        return "redirect:/students";
    }

    // Home page
    @GetMapping("/home")
    public String homePage() {
        return "home";
    }

    // Login page
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/loginUser")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            HttpSession session,
                            Model model) {

        Student student = studentRepository.findByEmailAndPassword(email, password);

        if (student != null) {
            session.setAttribute("loginStudent", student);

            if (student.getRole().equals("ADMIN")) {
                return "redirect:/students";      // admin sees all students
            } else {
                return "redirect:/dashboard";     // student sees only his data
            }
        } else {
            model.addAttribute("msg", "Invalid Email or Password!");
            return "login";
        }
    }


    // Dashboard page (show only logged-in student)
    @GetMapping("/dashboard")
    public String dashboard(HttpSession session, Model model) {

        Student student = (Student) session.getAttribute("loginStudent");

        if (student == null) {
            return "redirect:/login";
        }
        model.addAttribute("student", student);
        return "dashboard";
    }


    // Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login";
    }
    
    @GetMapping("/courses")
    public String coursesPage() {
        return "courses";
    }

}
