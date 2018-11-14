package java112.project3;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;
import javax.servlet.annotation.*;


@WebServlet (
        name="YellowPagesServlet",
        urlPatterns={"/yellow-pages"}
)
public class YellowPagesServlet extends HttpServlet {

    List<YellowPagesBean> companies;
    YellowPagesBean company1;
    YellowPagesBean company2;
    YellowPagesBean company3;

    /**
     * Initialize a bean.
     */
    public void init() {
        companies = new ArrayList<YellowPagesBean>();

        company1 = new YellowPagesBean();
        company1.setName("Acme Computing");
        company1.setAddress("123 Test St.");
        company1.setCity("Madison");
        company1.setState("WI");
        company1.setZipcode("53703");
        company1.setPhoneNumber("6088888888");
        company1.setUrl("http://example.com");
        company1.setNumberOfAccesses(0);
        companies.add(company1);

        company2 = new YellowPagesBean();
        company2.setName("Tops Computing");
        company2.setAddress("234 Test St.");
        company2.setCity("Madison");
        company2.setState("WI");
        company2.setZipcode("53707");
        company2.setPhoneNumber("6087777777");
        company2.setUrl("http://example.com");
        company2.setNumberOfAccesses(0);
        companies.add(company2);

        company3 = new YellowPagesBean();
        company3.setName("Bestest Computing");
        company3.setAddress("345 Test St.");
        company3.setCity("Madison");
        company3.setState("WI");
        company3.setZipcode("53705");
        company3.setPhoneNumber("6086666666");
        company3.setUrl("http://example.com");
        company3.setNumberOfAccesses(0);
        companies.add(company3);
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

//        company.setNumberOfAccesses(company.getNumberOfAccesses() + 1);
//        request.setAttribute("company", company);
//
//        company2.setNumberOfAccesses(company2.getNumberOfAccesses() + 1);
//        request.setAttribute("company2", company2);
//
//        company3.setNumberOfAccesses(company3.getNumberOfAccesses() + 1);
//        request.setAttribute("company3", company3);

        for (YellowPagesBean company : companies) {
            company.setNumberOfAccesses(company.getNumberOfAccesses() + 1);
        }

        request.setAttribute("companies", companies);


        String url = "/yellow_pages.jsp";
        RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(url);

        dispatcher.forward(request, response);
    }
}
