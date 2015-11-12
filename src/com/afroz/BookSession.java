package com.afroz;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class BookSession extends TagSupport {
	@Override
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.print("Book Details from session<br>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

	@Override
	public int doEndTag() throws JspException {
		HttpSession session = (HttpSession) pageContext.getSession();
		BookBean b = (BookBean) session.getAttribute("book");
		JspWriter out = pageContext.getOut();
		try {
			out.println("Book Name:" + b.getBname() + "<br>Book Number:"
					+ b.getBno() + "<br>Book Price:" + b.getBprice());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}

}
