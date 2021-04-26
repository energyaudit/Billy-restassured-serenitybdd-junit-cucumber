package util;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

/**
 * Created by byang on 91/22/2016.
 */

public class postResponseBody {
    static  RequestSpecification httpRequest;
    static Response response;
    public static Response  postWithPaylaod(String requestBody,String puri, String path)  {
        Response response = null;
        try {
            response = RestAssured.given()
                    .contentType(ContentType.JSON)
                    .body(requestBody)
                    .post(path);
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("Response :" + response.asString());
        System.out.println("Status Code :" + response.getStatusCode());
        return response;
    }

}

