<%@ page import="java112.project3.*,java.util.*"%><div id=content>
    <%
        List<YellowPagesBean> companies = (ArrayList<YellowPagesBean>) request.getAttribute("companies");
        int i = -1;
        for (YellowPagesBean company : companies) {
            i++;
    %>
    <table class="result">
        <tr><td>Company</td><td><%= companies.get(i).getName() %></td></tr>
        <tr><td>Address</td><td><%= companies.get(i).getAddress() %></td></tr>
        <tr><td>City</td><td><%= companies.get(i).getCity() %></td></tr>
        <tr><td>State</td><td><%= companies.get(i).getState() %></td></tr>
        <tr><td>Zip</td><td><%= companies.get(i).getZipcode() %></td></tr>
        <tr><td>Phone</td><td><%= companies.get(i).getPhoneNumber() %></td></tr>
        <tr><td>Website</td><td><%= companies.get(i).getUrl() %></td></tr>
        <tr><td>Accesses</td><td><%= companies.get(i).getNumberOfAccesses() %></td></tr>
    </table>
    <br>
    <% } %>
</div>
