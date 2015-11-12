package com.afroz;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class BookNumber extends TagSupport {
	@Override
	public int doStartTag() throws JspException {
		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {
		HttpServletRequest request= (HttpServletRequest) pageContext.getRequest();
		int bno = Integer.parseInt(request.getParameter("bno"));
		JspWriter out = pageContext.getOut();
		try {
			out.print(bno);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
}
