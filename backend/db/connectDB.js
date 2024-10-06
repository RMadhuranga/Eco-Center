import mongoose from "mongoose";

export const connectDB = async () => {
	try {
		
		const conn = await mongoose.connect("mongodb+srv://admin:mnadmin@janithcluster.qvuof.mongodb.net/marketgenius-backend?retryWrites=true&w=majority&appName=janithcluster");
		console.log(`Database is Connected: ${conn.connection.host,conn.connection.name}`);
	} catch (error) {
		console.log("Error connection to the Database: ", error.message);
		process.exit(1); // 1 is failure, 0 status code is success
	}
};
