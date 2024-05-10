package cz.czechitas.java2webapps.lekce4.controller;

import cz.czechitas.java2webapps.lekce4.entity.Lekce;
import cz.czechitas.java2webapps.lekce4.entity.Lektor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Controller()
@RequestMapping("/lekce")
public class LekceController {
    private final List<Lekce> seznamLekci = List.of(
            new Lekce("Lekce o mechu", LocalDate.of(2022, 9, 19), LocalTime.of(15, 0), LocalTime.of(18, 0), "V mechu"),
            new Lekce("Lekce o kapradí", LocalDate.of(2023, 8, 11), LocalTime.of(15, 0), LocalTime.of(18, 0), "V kapradí"),
            new Lekce("Lekce o trpaslících", LocalDate.of(2024, 7, 4), LocalTime.of(15, 0), LocalTime.of(18, 0), "V lese"),
            new Lekce("Lekce o mravencích", LocalDate.of(2025, 6, 16), LocalTime.of(15, 0), LocalTime.of(18, 0), "V mraveništi")
    );

    @GetMapping("/")
    public ModelAndView seznam() {
        ModelAndView modelAndView = new ModelAndView("/lekce/index");
        modelAndView.addObject("seznamLekci", seznamLekci);
        return modelAndView;
    }
}