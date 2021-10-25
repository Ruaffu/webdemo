<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "up and running!" %>
</h1>

Her har vi to forskellige forms!


<table>
    <tr>
        <th><h2>Get</h2></th>
        <th><h2>Post</h2></th>

    </tr>
    <tr>
        <td>
            <form action="hello-servlet", method="get">
                <label for="fname">First name:</label><br>
                <input type="text" id="fname" name="fname" value="John"><br>
                <label for="lname">Last name:</label><br>
                <input type="text" id="lname" name="lname" value="Doe"><br><br>
                <input type="submit" value="Submit">
            </form>

        </td>
        <td>
            <form action="hello-servlet", method="post">
                <label for="pfname">First name:</label><br>
                <input type="text" id="pfname" name="fname" value="John"><br>
                <label for="plname">Last name:</label><br>
                <input type="text" id="plname" name="lname" value="Doe"><br><br>
                <input type="submit" value="Submit">
            </form>

        </td>
</table>

<%--<h2>Get Form</h2>--%>

<%--<form action="hello-servlet", method="get">--%>
<%--    <label for="fname">First name:</label><br>--%>
<%--    <input type="text" id="fname" name="fname" value="John"><br>--%>
<%--    <label for="lname">Last name:</label><br>--%>
<%--    <input type="text" id="lname" name="lname" value="Doe"><br><br>--%>
<%--    <input type="submit" value="Submit">--%>
<%--</form>--%>

<%--<h2>Post Form</h2>--%>

<%--<form action="hello-servlet", method="post">--%>
<%--    <label for="pfname">First name:</label><br>--%>
<%--    <input type="text" id="pfname" name="fname" value="John"><br>--%>
<%--    <label for="plname">Last name:</label><br>--%>
<%--    <input type="text" id="plname" name="lname" value="Doe"><br><br>--%>
<%--    <input type="submit" value="Submit">--%>
<%--</form>--%>

<br/>
<br/>
<br/>
<a href="hello-servlet">link to servelet</a>
</body>
</html>