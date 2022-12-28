package com.company.app.controller;

import com.company.app.model.Client;
import com.company.app.model.Message;
import com.company.app.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class ClientController {
    @Autowired
    ClientService clientService;

    @GetMapping("/login")
    public String getLoginForm(Model model){
        Message msg = new Message();
        msg.setMessage(null);
        model.addAttribute("error", msg.getMessage());
        return "signIn";
    }

    @PostMapping("/login")
    public String signIn(Client client, Model model, RedirectAttributes redirAttr, HttpSession session){
        Client clt = clientService.signIn(client);
        if (clt.getMessage().getState().equalsIgnoreCase("error")){
            redirAttr.addFlashAttribute("error1", clt.getMessage().getMessage());
            return "redirect:/cart";
        }
        session.setAttribute("user", clt);
        return "redirect:/products";
    }

    @GetMapping("/signup")
    public String getSignUpForm(){
        return "signUp";
    }

    @PostMapping("/signup")
    public String signUp(Client client, Model model){
        Client clt = clientService.save(client);
        if (clt.getMessage().getState().equalsIgnoreCase("error")){
            model.addAttribute("error", clt.getMessage().getMessage());
            return "signUp";
        }

        return "redirect:login";
    }
}
