<%@ page import="java112.project3.YellowPagesBean" %>
<html>
    <head>
        <title>Yellow Pages</title>
    </head>
    <body>

        <table>
            <tr><td>Company Name</td><td>${company.name}</td></tr>
            <tr><td>Address</td><td>${company.address}</td></tr>
            <tr><td>City</td><td>${company.city}</td></tr>
            <tr><td>State</td><td>${company.state}</td></tr>
            <tr><td>Zip</td><td>${company.zipcode}</td></tr>
            <tr><td>Phone</td><td>${company.phoneNumber}</td></tr>
            <tr><td>Website</td><td>${company.url}</td></tr>
            <tr><td>Accesses</td><td>${company.numberOfAccesses}</td></tr>
        </table>
    </body>
</html>