package com.art.consulting.web.controller;


import org.apache.commons.io.IOUtils;

import java.io.IOException;
import java.util.List;


import org.apache.commons.lang3.SystemUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class testwebrtc {
	
	private static final Logger logger = LoggerFactory.getLogger(testwebrtc.class);
	@RequestMapping(value = "/rtc", method = RequestMethod.GET)
	public String test1(Model model) {
		
		logger.info("rtc");
		
		return "rtc";
	}
	
	@RequestMapping(value = "/myrtc", method = RequestMethod.GET)
	public String test2(Model model) {
		
		logger.info("myrtc");
		
		return "mywebrtc";
	}

	@RequestMapping(value = "/client", method = RequestMethod.GET)
	public String test3(Model model) {
		
		logger.info("myrtc");
		
		return "clientrtc";
	}
	@RequestMapping(value = "/webrtc", method = RequestMethod.GET)
	public String test4(Model model) {
		
		logger.info("myrtc");
		
		return "webrtc";
	}
	
	@RequestMapping(value = "/task", method = RequestMethod.GET)
	public String test6(Model model) {
		
		logger.info("myrtc");
		
/*	        try {
	               String [] processNames = {"firefox","iexplore","chrome"};
	                
	              //  String [] processNames = {"FlashBack Recorder","iexplore","chrome"};
	                for (String process : processNames) {
	                    if (SystemUtils.IS_OS_LINUX) {
	                        String[] cmd= {"/bin/sh",
	 "-c", "ps -ef | grep -w "+
	 process +" | grep -v grep | awk '/[0-9]/{print $2}' | xargs kill -9 "};

	StringBuffer output = new StringBuffer();
	        try {
	            Process p = Runtime.getRuntime().exec(cmd);
	            List<String> result = IOUtils.readLines(p.getInputStream());
	            for (String line : result) {
	                System.out.println(line);
	                output.append(line);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	                      
	                    } else if (SystemUtils.IS_OS_WINDOWS) {
	                        Runtime.getRuntime().exec("taskkill /F /IM "+ 
	process +".exe");
	                    }
	                }
	        } catch (IOException e) {
	            e.printStackTrace();
	        }*/
	    
		return "mytask";
	}

}
