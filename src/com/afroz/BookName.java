package com.afroz;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class BookName extends TagSupport{
	@Override
	public int doStartTag() throws JspException {
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() {
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		String bname= request.getParameter("bname");
		JspWriter out = pageContext.getOut();
		try {
			out.println(bname);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
}
