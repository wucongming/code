package cn.jxufe.database.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name="T_MyClass")
@NamedQueries({
	@NamedQuery(name="Clazz.pageList",query="select c from Clazz c where (c.time1 like :time1 or c.time2 like :time2 or c.time3 like :time3) and c.college like :college and c.teacher like :teacher and c.courseCode like :courseCode and c.course like :course"),
	@NamedQuery(name="Clazz.count",query="select count(c) from Clazz c where (c.time1 like :time1 or c.time2 like :time2 or c.time3 like :time3) and c.college like :college and c.teacher like :teacher and c.courseCode like :courseCode and c.course like :course")
})
public class Clazz extends IdEntity {
	
	@Column(name = "college")
	private String college;
	@Column(name = "course_code")
	private String courseCode;
	@Column(name = "course")
	private String course;
	@Column(name = "class_code")
	private String classCode;
	@Column(name = "teacher")
	private String teacher;
	@Column(name = "credit")
	private Integer credit;
	@Column(name = "campus")
	private String campus;
	@Column(name = "classroom_type")
	private String classRoomType;
	@Column(name = "time1")
	private String time1;
	@Column(name = "time2")
	private String time2;
	@Column(name = "time3")
	private String time3;
	@Column(name = "classroom1")
	private String classRoom1;
	@Column(name = "classroom2")
	private String classRoom2;
	@Column(name = "classroom3")
	private String classRoom3;
	@Column(name = "kaishi")
	private Integer begin;
	@Column(name = "tingzhi")
	private Integer end;
	@Column(name = "number_of_class")
	private Integer numberOfClass;
	@Column(name = "classroom_capacity")
	private Integer classRoomCapacity;
	@Column(name = "class_type")
	private String classType;
	@Column(name = "semester")
	private String semester;
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getClassCode() {
		return classCode;
	}
	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	public Integer getCredit() {
		return credit;
	}
	public void setCredit(Integer credit) {
		this.credit = credit;
	}
	public String getCampus() {
		return campus;
	}
	public void setCampus(String campus) {
		this.campus = campus;
	}
	public String getClassRoomType() {
		return classRoomType;
	}
	public void setClassRoomType(String classRoomType) {
		this.classRoomType = classRoomType;
	}
	public String getTime1() {
		return time1;
	}
	public void setTime1(String time1) {
		this.time1 = time1;
	}
	public String getTime2() {
		return time2;
	}
	public void setTime2(String time2) {
		this.time2 = time2;
	}
	public String getTime3() {
		return time3;
	}
	public void setTime3(String time3) {
		this.time3 = time3;
	}
	public String getClassRoom1() {
		return classRoom1;
	}
	public void setClassRoom1(String classRoom1) {
		this.classRoom1 = classRoom1;
	}
	public String getClassRoom2() {
		return classRoom2;
	}
	public void setClassRoom2(String classRoom2) {
		this.classRoom2 = classRoom2;
	}
	public String getClassRoom3() {
		return classRoom3;
	}
	public void setClassRoom3(String classRoom3) {
		this.classRoom3 = classRoom3;
	}
	public Integer getBegin() {
		return begin;
	}
	public void setBegin(Integer begin) {
		this.begin = begin;
	}
	public Integer getEnd() {
		return end;
	}
	public void setEnd(Integer end) {
		this.end = end;
	}
	public Integer getNumberOfClass() {
		return numberOfClass;
	}
	public void setNumberOfClass(Integer numberOfClass) {
		this.numberOfClass = numberOfClass;
	}
	public Integer getClassRoomCapacity() {
		return classRoomCapacity;
	}
	public void setClassRoomCapacity(Integer classRoomCapacity) {
		this.classRoomCapacity = classRoomCapacity;
	}
	public String getClassType() {
		return classType;
	}
	public void setClassType(String classType) {
		this.classType = classType;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	
	
	
}
