package util;

import io.restassured.RestAssured;
import io.restassured.http.Method;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Created by byang on 91/22/2016.
 */

public class getResponseBody {
  static  RequestSpecification httpRequest;
   static Response response;
    public static Response  getWithHeaders(Map headers, String puri, String path)  {
        RestAssured.baseURI = puri;
        httpRequest = RestAssured.given();
        System.out.println("The header is:  "+headers);
        Iterator var = ((Set)headers.keySet().stream().collect(Collectors.toSet())).iterator();
        while(var.hasNext()) {
            String headerKey = (String)var.next();
            httpRequest.header(headerKey, headers.get(headerKey));
        }
        response = httpRequest.request(Method.GET, path);
        System.out.println("The hiararchy reponse is:  "+response.getBody().asString());
        DateFormat dateFormat = new SimpleDateFormat("MM-dd-yyy-HH-mm-ss");
        Date date = new Date();
        String date1 = dateFormat.format(date);
        String data=response.asString();
        System.out.println(data);
        String jsonString=data;
        try {
            FileWriter writer = new FileWriter("src/main/testresult/"+date1+"temp.json");
            writer.write(jsonString);
            writer.close();
        } catch (IOException e) {
            System.out.println("exception " + e.getMessage());
            e.printStackTrace();
        }
        return response;

    }

}
