package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.sql.SQLException;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 * This class demonstrates basic JDBC operations including connecting to a
 * database,
 * adding a new job seeker, and accessing a SQL view.
 */
public class JDBCTest {

	// Scanner object to take user input
	static Scanner input = new Scanner(System.in);

	/**
	 * Main method to establish database connection, add a new job seeker, and
	 * access a SQL view.
	 * 
	 * @param args Command-line arguments (not used).
	 */
	public static void main(String[] args) {
		try {
			// Establishing a connection to the database
			Connection con = establishDatabaseConnection();
			System.out.println("Connection established.");

			// Adding a new job seeker to the database
			addNewJobSeeker(con);
			// Accessing a specific SQL view
			accessSQLView(con);

			con.close();
		} catch (SQLException e) {
			// Handling SQL exceptions
			System.err.println("SQLException: " + e.getMessage());
		}

	}

	/**
	 * Establishes a connection to the database.
	 * 
	 * @return Connection object representing the database connection.
	 * @throws SQLException If there is an error connecting to the database.
	 */
	public static Connection establishDatabaseConnection() throws SQLException {
		String host = "Host Address";
		String port = "Port";
		String DB = "phpMyAdmin Database";
		String username = "phpMyAdmin Username";
		String password = "phpMyAdmin Password";
		String urlDB = host + port + DB;
		return DriverManager.getConnection(urlDB, username, password);
	}

	/**
	 * Accesses and prints the results of a specific SQL view.
	 * 
	 * @param con Connection object representing the database connection.
	 * @throws SQLException If there is an error executing the SQL query.
	 */
	public static void accessSQLView(Connection con) throws SQLException {
		// Printing a message indicating the start of the SQL view access
		printIntroMessage("Accessing SQL View: EmployerRecruitmentRateBetweenJuneToDecember2023");

		// SQL query to access the view
		String query = "SELECT * FROM EmployerRecruitmentRateBetweenJuneToDecember2023";

		// Printing the results of the view
		printViewResults(con, query);
	}

	/**
	 * Adds a new job seeker to the JobSeekers table in the database.
	 * 
	 * @param con The Connection object representing the database connection.
	 */
	public static void addNewJobSeeker(Connection con) {
		// Print a message indicating the start of the record insertion process
		printIntroMessage("Inserting a new record into the JobSeekers table");

		try {
			// Prompting and reading user input for each field

			System.out.print("Enter first name: ");
			String fName = "'" + input.nextLine().trim() + "'"; // First name is required

			System.out.print("Enter middle name (optional): ");
			String mName = input.nextLine().trim();
			mName = checkOptionalField(mName); // Checking if middle name is optional

			System.out.print("Enter last name: ");
			String lName = "'" + input.nextLine().trim() + "'"; // Last name is required

			System.out.print("Enter date of birth (YYYY-MM-DD): ");
			String dob = input.nextLine().strip();
			dob = formatDate(dob); // Formatting the date of birth

			System.out.print("Enter email address: ");
			String emailAddress = "'" + input.nextLine().strip() + "'"; // Email address is required

			System.out.print("Enter phone number: ");
			String phoneNum = input.nextLine().strip();
			phoneNum = formatPhoneNum(phoneNum); // Formatting the phone number

			System.out.print("Enter street name: ");
			String streetName = "'" + input.nextLine().trim() + "'"; // Street name is required

			System.out.print("Enter city: ");
			String city = "'" + input.nextLine().trim() + "'"; // City is required

			System.out.print("Enter county (optional): ");
			String county = input.nextLine().trim();
			county = checkOptionalField(county); // Checking if county is optional

			System.out.print("Enter postcode: ");
			String postcode = "'" + input.nextLine().trim() + "'"; // Postcode is required

			System.out.print("Enter Skill ID (1-10): ");
			int skillID = input.nextInt(); // Skill ID is required

			System.out.print("Enter Education Level ID (1-10): ");
			int eduLevelID = input.nextInt(); // Education Level ID is required

			System.out.print("Enter Experience Level ID (1-11): ");
			int expLevelID = input.nextInt(); // Experience Level ID is required

			// Creating a SQL statement
			Statement stmt = con.createStatement();

			// Building the SQL query to insert a new job seeker
			String query = "INSERT IGNORE INTO JobSeekers (FirstName, MiddleName, LastName, DoB, Email, PhoneNo, StreetName, City, County, Postcode, EducationLevelID, ExperienceLevelID) VALUES ("
					+ fName + ", " + mName + ", " + lName + ", " + dob + ", " + emailAddress + ", " + phoneNum + ", "
					+ streetName + ", " + city + ", " + county + ", " + postcode + ", " + eduLevelID + ", " + expLevelID
					+ ")";

			// Executing the query and retrieving generated keys
			stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
			ResultSet rs = stmt.getGeneratedKeys();

			// Check if there is a generated key
			if (rs.next()) {
				int seekerID = rs.getInt(1);

				// Building the SQL query to insert the job seeker's skills
				query = "INSERT IGNORE INTO JobSeekerSkills (SeekerID, SkillID) VALUES (" + seekerID + "," + skillID
						+ ")";

				stmt.executeUpdate(query);

				System.out.println("\nData successfully added!"); // Success message
			} else {
				System.err.println("\nFailed to retrieve SeekerID."); // Error message if SeekerID is not retrieved
			}

		} catch (SQLException e) {
			// Handling SQL exceptions
			System.err.println("SQLException: " + e.getMessage());
		} catch (InputMismatchException ime) {
			// Handling input mismatch exceptions
			System.err.println("Invalid input detected!");
		} catch (Exception ex) {
			// Handling any other exceptions
			System.err.println("ERROR: " + ex.getMessage());
		}
	}

	/**
	 * Checks if a given field is optional and formats it appropriately.
	 * 
	 * @param field The field to be checked.
	 * @return The formatted field or null if the field is optional.
	 */
	public static String checkOptionalField(String field) {
		if (field.length() == 0 || field.equalsIgnoreCase("none") || field.equalsIgnoreCase("N/A")
				|| field.equalsIgnoreCase("null")) {
			return null;
		}
		return "'" + field + "'";
	}

	/**
	 * Formats a phone number by adding spaces at specific positions.
	 * 
	 * @param phoneField The phone number to be formatted.
	 * @return The formatted phone number as a string.
	 */
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

	/**
	 * Formats a date string into a LocalDate object and returns it as a formatted
	 * string.
	 * 
	 * @param date The date string in the format "YYYY-MM-DD".
	 * @return The formatted date string in SQL-compatible format.
	 * @throws Exception if the date format is invalid.
	 */
	public static String formatDate(String date) throws Exception {
		// Split the input date string into year, month, and day components
		String[] splitDate = date.split("-");
		LocalDate properDate = null;
		try {
			// Parse the split components into a LocalDate object
			properDate = LocalDate.of(
					Integer.parseInt(splitDate[0]), // Year
					Integer.parseInt(splitDate[1]), // Month
					Integer.parseInt(splitDate[2]));// Day
		} catch (Exception ex) {
			// Throw an exception with a descriptive message if the date format is invalid
			throw new Exception("Invalid date format: " + date);
		}

		// Return the properly formatted date string
		return "'" + properDate + "'";
	}

	/**
	 * Prints an introductory message with a border of asterisks underneath.
	 * 
	 * @param msg The message to be printed.
	 */
	public static void printIntroMessage(String msg) {
		// Print the message with a newline before it
		System.out.println("\n" + msg);

		// Print a border of asterisks equal in length to the message
		for (int i = 0; i < msg.length(); i++) {
			System.out.print("*");
		}

		// Print a newline after the asterisk border
		System.out.println();
	}

	/**
	 * Executes a SQL query to retrieve and print results from a view.
	 * 
	 * @param con The Connection object representing the database connection.
	 * @param s   The SQL query string to be executed.
	 * @throws SQLException if a database access error occurs.
	 */
	public static void printViewResults(Connection con, String s) throws SQLException {
		// Create a Statement object to execute the query
		Statement stmt = con.createStatement();

		// Execute the query and get the result set
		ResultSet rs = stmt.executeQuery(s);

		// Print the header for the result set
		System.out.println("EmployerID\tCompanyName\t\t\tNewRecruits");

		// Iterate through the result set and print each row
		while (rs.next()) {
			// Retrieve data from the current row
			int id = rs.getInt("EmployerID");
			String name = rs.getString("CompanyName");
			int newRecruits = rs.getInt("NewRecruits");

			// Print the EmployerID
			System.out.print(id + "\t\t");

			// Adjust the spacing based on the length of the CompanyName
			if (name.length() < 16) {
				System.out.print(name + "\t\t\t");
			} else if (name.length() < 24) {
				System.out.print(name + "\t\t");
			} else {
				System.out.print(name + "\t");
			}

			// Print the number of new recruits
			System.out.println(newRecruits);

		}
	}
}
