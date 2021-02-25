package edu.bit.ex.vo;


public class EmpVO {
	
	private int empNo;						// emp와 dept를 조인한 sql을 사용하기 위해 empVO에 dept 테이블 컬럼을 함께 추가해줌... 실행되긴 함... 그런데 더 나은 방법이 있을듯...?
	private String eName;
	private String	job;
	private String	mgr;
	private String	hiredate;
	private int	sal;
	private int	comm;
	private int	deptNo;
	private String dName;
	private String loc;

	
	public EmpVO() {
		super();
	}

	public EmpVO(int empNo, String eName, String job, String mgr, String hiredate, int sal, int comm, int deptNo, String dName, String loc) {
		super();
		//String dName, String loc
		this.empNo = empNo;
		this.eName = eName;
		this.job = job;
		this.mgr = mgr;
		this.hiredate = hiredate;
		this.sal = sal;
		this.comm = comm;
		this.deptNo = deptNo;
		this.dName = dName;
		this.loc = loc;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public String geteName() {
		return eName;
	}

	public void seteName(String eName) {
		this.eName = eName;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getMgr() {
		return mgr;
	}

	public void setMgr(String mgr) {
		this.mgr = mgr;
	}

	public String getHiredate() {
		return hiredate;
	}

	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}

	public int getComm() {
		return comm;
	}

	public void setComm(int comm) {
		this.comm = comm;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
}
