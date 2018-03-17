package ${package}.resources;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import ${package}.domain.Message;

@Path("/echo")
public class Echo {

    @GET
    @Path("{content}")
    @Produces({"application/xml","application/json"})
    public Response get(@PathParam("content") String content) {
        Message message = new Message().content(content);
        return Response.ok( message ).build();
    }

}
