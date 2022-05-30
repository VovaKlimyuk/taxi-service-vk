package taxi.controller.manufacturer;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import taxi.lib.Injector;
import taxi.service.entity.ManufacturerService;

public class DeleteManufacturerController extends HttpServlet {
    private static final Injector injector = Injector.getInstance("taxi");
    private final ManufacturerService manufacturerService = (ManufacturerService) injector
            .getInstance(ManufacturerService.class);

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        manufacturerService.delete(Long.parseLong(request.getParameter("id")));
        response.sendRedirect(request.getContextPath() + "/manufacturers");
    }
}
