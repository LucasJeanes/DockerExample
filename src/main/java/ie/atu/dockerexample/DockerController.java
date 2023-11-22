package ie.atu.dockerexample;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerController {
    @GetMapping("/hello")
    public String DockerController() {
        return "Hello";
    }
}
