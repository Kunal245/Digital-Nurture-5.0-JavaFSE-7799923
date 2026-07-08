package com.cognizant.springlearn.service;

import com.cognizant.springlearn.model.Country;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CountryService.class);

    public Country getCountry(String code){

        LOGGER.info("START - getCountry(" + code + ")");

        ApplicationContext context = new ClassPathXmlApplicationContext("country.xml");
        List<Country> countries = (List<Country>) context.getBean("countryList");

        for(Country country : countries){

            if(country.getCode().equalsIgnoreCase(code)){

                LOGGER.info("END - getCountry(" + code + ")");
                return country;
            }
        }

        LOGGER.info("END - getCountry() - Not Found !!");
        return null;
    }
}
