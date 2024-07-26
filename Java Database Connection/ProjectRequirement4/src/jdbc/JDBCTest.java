package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.sql.SQLException;
import java.util.InputMismatchException;
import java.util.Scanner;

public class JDBCTest {

	static Scanner input = new Scanner(System.in);

	public static void main(String[] args) {
		try {
			Connection con = establishDatabaseConnection();
			System.out.println("Connection established.");

			addNewJobSeeker(con);
			accessSQLView(con);

			con.close();
		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		}

	}

	public static Connection establishDatabaseConnection() throws SQLException {
		String host = "jdbc:mysql://probinson21.webhosting1.eeecs.qub.ac.uk";
		String port = ":3306/";
		String DB = "probinson21";
		String username = "probinson21";
		String password = "rcSbYLqBKyKRbf1f";
		String urlDB = host + port + DB;
		return DriverManager.getConnection(urlDB, username, password);
	}

	public static void accessSQLView(Connection con) throws SQLException {
		printIntroMessage("Accessing SQL View: EmployerRecruitmentRateBetweenJuneToDecember2023");

		String query = "SELECT * FROM EmployerRecruitmentRateBetweenJuneToDecember2023";
		printViewResults(con, query);
	}

	public static void addNewJobSeeker(Connection con) {
		printIntroMessage("Inserting a new record into the JobSeekers table");

		try {
			System.out.print("Enter first name: ");
			String fName = "'" + input.nextLine().trim() + "'";

			System.out.print("Enter middle name (optional): ");
			String mName = input.nextLine().trim();
			mName = checkOptionalField(mName);

			System.out.print("Enter last name: ");
			String lName = "'" + input.nextLine().trim() + "'";

			System.out.print("Enter date of birth (YYYY-MM-DD): ");
			String dob = input.nextLine().strip();
			dob = formatDate(dob);

			System.out.print("Enter email address: ");
			String emailAddress = "'" + input.nextLine().strip() + "'";

			System.out.print("Enter phone number: ");
			String phoneNum = input.nextLine().strip();
			phoneNum = formatPhoneNum(phoneNum);

			System.out.print("Enter street name: ");
			String streetName = "'" + input.nextLine().trim() + "'";

			System.out.print("Enter city: ");
			String city = "'" + input.nextLine().trim() + "'";

			System.out.print("Enter county (optional): ");
			String county = input.nextLine().trim();
			county = checkOptionalField(county);

			System.out.print("Enter postcode: ");
			String postcode = "'" + input.nextLine().trim() + "'";

			System.out.print("Enter Skill ID (1-10): ");
			int skillID = input.nextInt();

			System.out.print("Enter Education Level ID (1-10): ");
			int eduLevelID = input.nextInt();

			System.out.print("Enter Experience Level ID (1-11): ");
			int expLevelID = input.nextInt();

			Statement stmt = con.createStatement();

			String query = "INSERT IGNORE INTO JobSeekers (FirstName, MiddleName, LastName, DoB, Email, PhoneNo, StreetName, City, County, Postcode, EducationLevelID, ExperienceLevelID) VALUES ("
					+ fName + ", " + mName + ", " + lName + ", " + dob + ", " + emailAddress + ", " + phoneNum + ", "
					+ streetName + ", " + city + ", " + county + ", " + postcode + ", " + eduLevelID + ", " + expLevelID
					+ ")";

			stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);

			ResultSet rs = stmt.getGeneratedKeys();

			// Check if there is a generated key
			if (rs.next()) {
				int seekerID = rs.getInt(1);

				query = "INSERT IGNORE INTO JobSeekerSkills (SeekerID, SkillID) VALUES (" + seekerID + "," + skillID
						+ ")";

				stmt.executeUpdate(query);

				System.out.println("\nData successfully added!");
			} else {
				System.err.println("\nFailed to retrieve SeekerID.");
			}

		} catch (SQLException e) {
			System.err.println("SQLException: " + e.getMessage());
		} catch (InputMismatchException ime) {
			System.err.println("Invalid input detected!");
		} catch (Exception ex) {
			System.err.println("ERROR: " + ex.getMessage());
		}
	}

	public static String checkOptionalField(String field) {
		if (field.length() == 0 || field.equalsIgnoreCase("none") || field.equalsIgnoreCase("N/A")
				|| field.equalsIgnoreCase("null")) {
			return null;
		}
		return "'" + field + "'";
	}

	public static String formatPhoneNum(String phoneField) {
		String phoneNum = "'";
		for (int i = 0; i < phoneField.length(); i++) {
			if (i == 2 || i == 6) {
				phoneNum += phoneField.charAt(i) + " ";
			} else if (i == phoneField.length() - 1) {
				phoneNum += phoneField.charAt(i) + "'";
			} else {
				phoneNum += phoneField.charAt(i);
			}
		}
		return phoneNum;
	}

	public static String formatDate(String date) throws Exception {
		String[] splitDate = date.split("-");
		LocalDate properDate = null;
		try {
			properDate = LocalDate.of(Integer.parseInt(splitDate[0]), Integer.parseInt(splitDate[1]),
					Integer.parseInt(splitDate[2]));
		} catch (Exception ex) {
			throw new Exception("Invalid date format: " + date);
		}

		return "'" + properDate + "'";
	}

	public static void printIntroMessage(String msg) {
		System.out.println("\n" + msg);
		for (int i = 0; i < msg.length(); i++) {
			System.out.print("*");
		}

		System.out.println();
	}

	public static void printViewResults(Connection con, String s) throws SQLException {

		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(s);
		System.out.println("EmployerID\tCompanyName\t\t\tNewRecruits");

		while (rs.next()) {
			int id = rs.getInt("EmployerID");
			String name = rs.getString("CompanyName");
			int newRecruits = rs.getInt("NewRecruits");

			System.out.print(id + "\t\t");

			if (name.length() < 16) {
				System.out.print(name + "\t\t\t");
			} else if (name.length() < 24) {
				System.out.print(name + "\t\t");
			} else {
				System.out.print(name + "\t");
			}

			System.out.println(newRecruits);

		}
	}
}
