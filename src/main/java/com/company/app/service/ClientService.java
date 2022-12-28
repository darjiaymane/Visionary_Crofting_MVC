package com.company.app.service;

import com.company.app.model.Client;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ClientService {
    Client save(Client client);
    Client findById(Long id);
    Client findByEmail(String email);
    Client findByUsername(String username);
    Client updateClient(Client client);
    Client deleteClient(Long id);

    Client signIn(Client client);
    List<Client> findAll();
}
