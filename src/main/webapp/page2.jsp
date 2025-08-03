<%@ page session="true" %>
<%
    // Store previous page data in session (only on POST)
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        session.setAttribute("name", request.getParameter("name"));
        session.setAttribute("roll", request.getParameter("roll"));
        session.setAttribute("subject", request.getParameter("subject"));
        session.setAttribute("code", request.getParameter("code"));
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Step 2 – Assignment Details</title>
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

        input[type="text"], textarea {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            resize: vertical;
            transition: 0.3s border-color ease;
        }

        input[type="text"]:focus, textarea:focus {
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

        .back-button {
            margin-top: 12px;
            width: 100%;
            background-color: #95a5a6;
            color: white;
            border: none;
            padding: 10px;
            font-size: 15px;
            border-radius: 8px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #7f8c8d;
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
        <h2>Step 2: Assignment Details</h2>

        <!-- Form to go to Preview Page -->
        <form action="page3.jsp" method="post">
            <label for="title">Assignment Title:</label>
            <input type="text" id="title" name="title" value="<%= session.getAttribute("title") != null ? session.getAttribute("title") : "" %>" required>

            <label for="description">Description:</label>
            <textarea id="description" name="description" rows="5" required><%= session.getAttribute("description") != null ? session.getAttribute("description") : "" %></textarea>

            <input type="submit" value="Next">
        </form>

        <!-- Form to go back to Page 1 -->
        <form action="index.jsp" method="get">
            <input type="submit" value="Back" class="back-button">
        </form>
    </div>
</body>
</html>
