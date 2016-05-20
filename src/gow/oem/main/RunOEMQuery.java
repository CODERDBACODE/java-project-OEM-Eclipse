package gow.oem.main;

import gow.ora.dh.*;

import java.sql.*;

public class RunOEMQuery {

	public static void main(String[] args) throws SQLException {

		System.out.println("INFO - Entering OEM Query");

		int argCount = args.length;

		if (argCount < 6) {
			System.out
					.println("ERR- Insufficient Arguments.  Need username, password, hostOrScanName,"
							+ " port, serviceName, queryToRun");
		}

		String username = args[0];
		String password = args[1];
		String hostOrScanName = args[2];
		String port = args[3];
		String serviceName = args[4];
		String query = args[5];

		try {
			ResultSet resultSet = new DataHandler().queryResultSet(username,
					password, hostOrScanName, port, serviceName, query);

			// Process the resultset < TBD >
			ResultSetMetaData rsMetadata = resultSet.getMetaData();
			int columnCount = rsMetadata.getColumnCount();

			// resultSet.beforeFirst();

			while (resultSet.next()) {
				// System.out.println("INFO - Column Count is" + columnCount +
				// ", Row Position is" + resultSet.getRow());
				for (int i = 1; i <= columnCount; i++) {
					if (i > 1)
						System.out.print(",  ");
					String columnValue = resultSet.getString(i);
					System.out.print(columnValue + " "
							+ rsMetadata.getColumnName(i));
				}
				System.out.println("");
			}

		} catch (SQLException e) {
			// you handle the exception here
			e.printStackTrace();
		}

		System.out.println("INFO - Exiting OEM Query");
	}

}
