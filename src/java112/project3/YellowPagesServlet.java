package java112.project3;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.annotation.*;


@WebServlet (
        name="YellowPagesServlet",
        urlPatterns={"/yellow-pages"}
)
public class YellowPagesServlet extends HttpServlet {

    YellowPagesBean company;
    YellowPagesBean company2;

    /**
     * Initialize a bean.
     */
    public void init() {
        company = new YellowPagesBean();
        company2 = new YellowPagesBean();
    }

    /**
     * Handles GET request.
     *
     * @param request The HttpServletRequest.
     * @param response The HttpServletResponse.
     *
     * @throws ServletException Indicates a Servlet problem.
     * @throws IOException Indicate an IO problem.
     */

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        company.setName("Acme Computing");
        company.setAddress("123 Test St.");
        company.setCity("Madison");
        company.setState("WI");
        company.setZipcode("53703");
        company.setPhoneNumber("6088888888");
        company.setUrl("http://example.com");
        company.setNumberOfAccesses(company.getNumberOfAccesses() + 1);
        request.setAttribute("company", company);

        company2.setName("Tops Computing");
        company2.setAddress("234 Test St.");
        company2.setCity("Madison");
        company2.setState("WI");
        company2.setZipcode("53707");
        company2.setPhoneNumber("6087777777");
        company2.setUrl("http://example.com");
        company2.setNumberOfAccesses(company2.getNumberOfAccesses() + 1);
        request.setAttribute("company2", company2);

        String url = "/yellow_pages.jsp";
        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(url);

        dispatcher.forward(request, response);
    }
}
