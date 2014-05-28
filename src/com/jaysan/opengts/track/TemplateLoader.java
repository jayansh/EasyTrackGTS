package com.jaysan.opengts.track;

import java.util.Locale;

import javax.servlet.ServletContext;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import freemarker.template.Version;

public class TemplateLoader {
    
    private static Configuration cfg;
    
    public static void initialize(ServletContext servletContext){
     // 1. Configure FreeMarker
        //
        // You should do this ONLY ONCE, when your application starts,
        // then reuse the same Configuration object elsewhere.
        cfg = new Configuration();
        
        // Where do we load the templates from:
        // cfg.setClassForTemplateLoading(HTMLOutput.class, "/");
        cfg.setServletContextForTemplateLoading(servletContext, "/");
        // Some other recommended settings:
        cfg.setIncompatibleImprovements(new Version(2, 3, 20));
        cfg.setDefaultEncoding("UTF-8");
        cfg.setLocale(Locale.US);
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        
    }
    
    public static Configuration getConfiguration(){
        return cfg;
    }
}
