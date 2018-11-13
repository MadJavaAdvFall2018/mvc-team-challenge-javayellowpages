<html>
    <head>
        <title>Yellow Pages</title>
        <meta http-equiv="Content-Language" content="German" />
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    	<link rel="stylesheet" type="text/css" href="css/yellowPageStyle.css" media="screen" />
    	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css' />

    </head>

    <div id="wrap">
    	<div id="header">
    		<h1><a href="#">Yellow Pages -- Results</a></h1>
    	</div>

    <body>
    <div id=content>
        <table class="result">
            <tr><td>Company</td><td>${company.name}</td></tr>
            <tr><td>Address</td><td>${company.address}</td></tr>
            <tr><td>City</td><td>${company.city}</td></tr>
            <tr><td>State</td><td>${company.state}</td></tr>
            <tr><td>Zip</td><td>${company.zipcode}</td></tr>
            <tr><td>Phone</td><td>${company.phoneNumber}</td></tr>
            <tr><td>Website</td><td>${company.url}</td></tr>
            <tr><td>Accesses</td><td>${company.numberOfAccesses}</td></tr>
        </table>
        <br>
        <table class="result">
            <tr><td>Company</td><td>${company2.name}</td></tr>
            <tr><td>Address</td><td>${company2.address}</td></tr>
            <tr><td>City</td><td>${company2.city}</td></tr>
            <tr><td>State</td><td>${company2.state}</td></tr>
            <tr><td>Zip</td><td>${company2.zipcode}</td></tr>
            <tr><td>Phone</td><td>${company2.phoneNumber}</td></tr>
            <tr><td>Website</td><td>${company2.url}</td></tr>
            <tr><td>Accesses</td><td>${company2.numberOfAccesses}</td></tr>
        </table>
    </div>

    <div id="footer">
        <div style="float: right;">
            <a href="/java112/yellow_diagram.jsp">Diagram</a>
        </div>
        Theme #4 &copy; 2013 | <!-- You can use it for practically any personal or commercial use so long as you keep our footer credit links intact. -->Theme by <a target="_blank" href="http://codingdev.de" title="CodingDev">CodingDev</a>
    </div>

    </body>
</html>
