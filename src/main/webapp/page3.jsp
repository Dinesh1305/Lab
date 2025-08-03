<%@ page session="true" %>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        session.setAttribute("title", request.getParameter("title"));
        session.setAttribute("description", request.getParameter("description"));
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Step 3 – Preview & Confirm</title>
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
            max-width: 600px;
            width: 100%;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        h3 {
            color: #34495e;
            margin-top: 25px;
        }

        p {
            font-size: 15px;
            margin: 5px 0;
        }

        strong {
            color: #2c3e50;
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
            margin-top: 20px;
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

        .warning {
            color: red;
            margin-top: 15px;
            font-style: italic;
            font-size: 14px;
            text-align: center;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
                margin: 10px;
            }
        }
    </style>

    <script>
        let timeout;

        function resetTimer() {
            clearTimeout(timeout);
            timeout = setTimeout(() => {
                document.getElementById("autoSubmitForm").submit();
            }, 60000); // 60 seconds
        }

        function startTimer() {
            document.addEventListener("mousemove", resetTimer);
            document.addEventListener("keypress", resetTimer);
            resetTimer();
        }

        window.onload = startTimer;
    </script>
</head>
<body>
    <div class="container">
        <h2>Step 3: Preview & Confirm</h2>

        <h3>Student Details</h3>
        <p><strong>Name:</strong> <%= session.getAttribute("name") %></p>
        <p><strong>Roll Number:</strong> <%= session.getAttribute("roll") %></p>
        <p><strong>Subject:</strong> <%= session.getAttribute("subject") %></p>
        <p><strong>Subject Code:</strong> <%= session.getAttribute("code") %></p>

        <h3>Assignment Details</h3>
        <p><strong>Title:</strong> <%= session.getAttribute("title") %></p>
        <p><strong>Description:</strong> <%= session.getAttribute("description") %></p>

        <!-- Form to submit the final assignment -->
        <form id="autoSubmitForm" action="page4.jsp" method="post">
            <input type="submit" value="Submit">
        </form>

        <!-- Back to edit assignment page -->
        <form action="page2.jsp" method="get">
            <input type="submit" value="Back to Edit Assignment" class="back-button">
        </form>

        <p class="warning">This form will auto-submit after 60 seconds of inactivity.</p>
    </div>
</body>
</html>
