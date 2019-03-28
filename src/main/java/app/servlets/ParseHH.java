package app.servlets;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ParseHH extends HttpServlet {
    private static String ageFrom = "";
    private static String ageTo = "";
    private static String URL = "https://hh.ru/search/resume?age_from="+ageFrom+"&age_to="+ageTo+"&clusters=true&exp_period=all_time&label=only_with_age&label=only_with_salary&logic=normal&no_magic=false&order_by=relevance&pos=full_text&salary_from=25000&salary_to=50000&text=";

    public static void main(String[] args) {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Document doc = Jsoup.connect(URL).get();
        Elements h1Elements = doc.getElementsByAttributeValue("class", "header");
        String text = h1Elements.text();
        System.out.println(text);
        req.setAttribute("text1", text+"ahaha");
        req.setAttribute("age1", 34);
        getServletContext().getRequestDispatcher("index.jsp").forward(req, resp);

    }
}
