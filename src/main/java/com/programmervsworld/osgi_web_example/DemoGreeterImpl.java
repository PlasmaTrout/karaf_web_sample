package com.programmervsworld.osgi_web_example;

import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Service;

import com.programmervsworld.api.Greeter;

@Service(value=com.programmervsworld.api.Greeter.class)
@Component(name="Demonstration Greeter Component")
public class DemoGreeterImpl implements Greeter
{

	public String greet() {
		return "This is a greeting from an OSGi component";
	}
    
}
