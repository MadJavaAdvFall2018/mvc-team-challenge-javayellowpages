<%-- @ page import="java112.project3.*, java.util.*" --%><html>
    <head>
        <title>Yellow Pages</title>
    </head>
    <body>
        <a href="/java112/yellow_diagram.jsp">Diagram</a>

    <%--
        <%
            // the following loop uses JSP Expressions instead of EL
            List<YellowPagesBean> companies = (ArrayList) request.getAttribute("companies");
            for (YellowPagesBean company : companies) {
        %>
        <table>
            <tr><td>Company</td><td><%= company.getName() %></td></tr>
            <tr><td>Address</td><td><%= company.getAddress() %></td></tr>
            <tr><td>City</td><td><%= company.getCity() %></td></tr>
            <tr><td>State</td><td><%= company.getState() %></td></tr>
            <tr><td>Zip</td><td><%= company.getZipcode() %></td></tr>
            <tr><td>Phone</td><td><%= company.getPhoneNumber() %></td></tr>
            <tr><td>Website</td><td><%= company.getUrl() %></td></tr>
            <tr><td>Accesses</td><td><%= company.getNumberOfAccesses() %></td></tr>
        </table>
        <% } %> --%>
        <table>
            <tr><td>Company</td><td>${company.name}</td></tr>
            <tr><td>Address</td><td>${company.address}</td></tr>
            <tr><td>City</td><td>${company.city}</td></tr>
            <tr><td>State</td><td>${company.state}</td></tr>
            <tr><td>Zip</td><td>${company.zipcode}</td></tr>
            <tr><td>Phone</td><td>${company.phoneNumber}</td></tr>
            <tr><td>Website</td><td>${company.url}</td></tr>
            <tr><td>Accesses</td><td>${company.numberOfAccesses}</td></tr>
        </table>
        <table>
            <tr><td>Company</td><td>${company2.name}</td></tr>
            <tr><td>Address</td><td>${company2.address}</td></tr>
            <tr><td>City</td><td>${company2.city}</td></tr>
            <tr><td>State</td><td>${company2.state}</td></tr>
            <tr><td>Zip</td><td>${company2.zipcode}</td></tr>
            <tr><td>Phone</td><td>${company2.phoneNumber}</td></tr>
            <tr><td>Website</td><td>${company2.url}</td></tr>
            <tr><td>Accesses</td><td>${company2.numberOfAccesses}</td></tr>
        </table>
        <table>
            <tr><td>Company</td><td>${company3.name}</td></tr>
            <tr><td>Address</td><td>${company3.address}</td></tr>
            <tr><td>City</td><td>${company3.city}</td></tr>
            <tr><td>State</td><td>${company3.state}</td></tr>
            <tr><td>Zip</td><td>${company3.zipcode}</td></tr>
            <tr><td>Phone</td><td>${company3.phoneNumber}</td></tr>
            <tr><td>Website</td><td>${company3.url}</td></tr>
            <tr><td>Accesses</td><td>${company3.numberOfAccesses}</td></tr>
        </table>
    </body>
</html>
