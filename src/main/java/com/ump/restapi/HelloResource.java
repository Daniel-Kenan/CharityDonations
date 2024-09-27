/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ump.restapi;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;

/**
 *
 * @author sdani
 */

@Path("/hello")
public class HelloResource {
    
    @GET
    public String hello(){
    return "Hello world"; 
    }
}
