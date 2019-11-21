/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author himan
 */
public class ChocoTag extends SimpleTagSupport {

    private String texture;
    ChocoBean cb = new ChocoBean();

    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
            out.println(cb.getResult());
        } catch (java.io.IOException ex) {
            throw new JspException("Error in ChocoTag tag", ex);
        }
    }

    public void setTexture(String texture) {
        this.texture = texture;
        cb.setTexture(texture);
    }
    
}
