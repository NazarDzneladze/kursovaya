package helpers.env.local;

import helpers.env.Environment;

public class LocalEnv implements Environment {
	@Override
	public String getDatabaseURL() {
		return "jdbc:mysql://localhost:3306/insurance?useLegacyDatetimeCode=false&serverTimezone=UTC";
	}
	
	@Override
	public String getDBUser() {
		// TODO Auto-generated method stub
		return "root";
	}
	
	@Override
	public String getDBPass() {
		return "root";
	}
	
	@Override
	public boolean isDev() {
		return true;
	}
	
	@Override
	public boolean isHeroku() {
		return false;
	}
	@Override
	public String getDriver() {
		// TODO Auto-generated method stub
		return "com.mysql.cj.jdbc.Driver";
	}
}
