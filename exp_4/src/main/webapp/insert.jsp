 <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            width: 100%;
            height: 100vh;
        }

        #navbar {
            display: flex;
            align-items: center;
            position: relative;
            justify-content: center;
            background-color: #088178;
            height: 50px;
        }

        #navbar li {
            display: flex;
            list-style: none;
            padding: 0 40px;
            position: relative;
            flex-direction: row;
        }

        #navbar li a {
            display: flex;
            text-decoration: none;
            font-size: 20px;
            font-weight: 600;
            color: #ffffff;
            align-items: center;
            flex-direction: row;
            transition: 0.3s ease;
        }


        #navbar li a:hover,
        #navbar li a.active {
            color: #8af3e3;
        }


        #navbar li a.active::after,
        #navbar li a:hover::after {
            content: "";
            width: 30%;
            height: 2px;
            background: #f6fdfc;
            position: absolute;
            bottom: -4px;
            left: 40px;

        }

        .insert {
            width: 100%;
            height: 50%;
            display: flex;

            justify-content: center;
            padding: 0;

        }
    </style>
</head>

<body>
    <div class="navbar">
        <ul id="navbar">

            <li><a href="insert.jsp">Insert</a></li>
            <li><a href="update.jsp">Update</a></li>
 			<li><a href="delete.jsp">Delete</a></li>
            <li><a href="SelectServlet">Show table</a></li>
        </ul>
    </div>
    <div class="insert">
        <form action="InsertServlet" method="POST">
            <table>
                <tr>
                    <td> <label for="">Employee id :</label></td>
                    <td> <input type="number" name="emp_id"></td>
                </tr>
                <tr>
                    <td><label for="">Employee Name : &nbsp;</label></td>

                    <td><input type="text" name="emp_name"></td>
                </tr>
                <tr>
                    <td> <label for="">Join Date : &nbsp;</label></td>

                    <td><input type="text" name="join_date"></td>
                </tr>
                <tr>
                    <td> <label for="">Salary : &nbsp;</label></td>

                    <td><input type="number" name="salary"></td>
                </tr>
                <tr>
                    <td> <label for="">Designation : &nbsp;</label>
                    </td>
                    <td><input type="text" name="designation"></td>
                </tr>
                <tr>
                    <td><label for="">Age : &nbsp;</label>
                    </td>
                    <td><input type="number" name="age"></td>
                </tr>
                <tr>
                    
                    <td colspan="2"><input type="submit" name="submit"></td>
                </tr>
                
                
            </table>
        </form>
        
       
    </div>
</body>

</html>