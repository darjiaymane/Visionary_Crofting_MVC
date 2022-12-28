package com.company.app.service.implementation;

import com.company.app.model.Client;
import com.company.app.model.Message;
import com.company.app.repository.ClientRepository;
import com.company.app.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientServiceImp implements ClientService {
    @Autowired
    ClientRepository clientRepository;
    @Autowired
    Message message;

    @Override
    public Client save(Client client) {
        if (client == null || client.getEmail().isEmpty() || client.getPassword().isEmpty() ||  client.getUserName().isEmpty() || client.getTelephone().isEmpty()){
           message.setState("Error");
           message.setMessage("All information are required");
           client.setMessage(message);
           return client;
        }

        if (findByEmail(client.getEmail()) != null){
            message.setState("Error");
            message.setMessage("This user is already exist");
            client.setMessage(message);
            return client;
        }
        clientRepository.save(client);
        message.setState("Success");
        message.setMessage("The account has been created successfully");
        client.setMessage(message);
        return client;
    }

    @Override
    public Client findById(Long id) {
        return null;
    }

    @Override
    public Client findByEmail(String email) {
        Client client = clientRepository.findByEmail(email);
        return client;
    }

    @Override
    public Client findByUsername(String username) {
        return null;
    }

    @Override
    public Client updateClient(Client client) {
        return null;
    }

    @Override
    public Client deleteClient(Long id) {
        return null;
    }

    @Override
    public Client signIn(Client client){
        if (client == null || client == new Client()){
            message.setState("Error");
            message.setMessage("Please enter your informations");
            client.setMessage(message);
            return client;
        }
        if (client.getEmail() == null){
            message.setState("Error");
            message.setMessage("Please enter you email");
            client.setMessage(message);
            return client;
        }
        Client clientToLogin = findByEmail(client.getEmail());

        if (clientToLogin == null){
            message.setState("Error");
            message.setMessage("Account not found Check your email");
            client.setMessage(message);
            return client;
        }
        if (!client.getPassword().equals(clientToLogin.getPassword())){
            message.setState("Error");
            message.setMessage("Password Incorrect");
            client.setMessage(message);
            return client;
        }
        message.setState("Success");
        message.setMessage("Information are correct");
        clientToLogin.setMessage(message);
        return clientToLogin;
    }

    @Override
    public List<Client> findAll() {
        List<Client> clients = clientRepository.findAll();
        return clients;
    }
}
