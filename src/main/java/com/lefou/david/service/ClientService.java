package com.lefou.david.service;

import com.lefou.david.model.Client;

import java.util.List;

public interface ClientService {
    Client saveClient(Client client);
    void deleteClient(Long clientId);
    List<Client> findAllClients();
    Client findClientById(Long clientId);
}
