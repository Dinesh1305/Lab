<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Step 1 – Student Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ece9e6, #ffffff);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
            max-width: 500px;
            width: 100%;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #34495e;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: 0.3s border-color ease;
        }

        input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Step 1: Student Details</h2>
        <form action="page2.jsp" method="post">
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" value="<%= session.getAttribute("name") != null ? session.getAttribute("name") : "" %>" required>

            <label for="roll">Roll Number:</label>
            <input type="text" id="roll" name="roll" value="<%= session.getAttribute("roll") != null ? session.getAttribute("roll") : "" %>" required>

            <label for="subject">Subject Name:</label>
            <input type="text" id="subject" name="subject" value="<%= session.getAttribute("subject") != null ? session.getAttribute("subject") : "" %>" required>

            <label for="code">Subject Code:</label>
            <input type="text" id="code" name="code" value="<%= session.getAttribute("code") != null ? session.getAttribute("code") : "" %>" required>

            <input type="submit" value="Next">
        </form>
    </div>
</body>
</html>
