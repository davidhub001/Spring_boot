package com.lefou.david.service;

import com.lefou.david.model.Commande;
import com.lefou.david.repository.CommandeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommandeServiceImpl implements CommandeService {

    @Autowired
    private CommandeRepository commandeRepository;

    @Override
    public Commande saveCommande(Commande commande) {
        return commandeRepository.save(commande);
    }

    @Override
    public void deleteCommande(Long commandeId) {
        commandeRepository.deleteById(commandeId);
    }

    @Override
    public List<Commande> findAllCommandes() {
        return commandeRepository.findAll();
    }

    @Override
    public Commande findCommandeById(Long commandeId) {
        return commandeRepository.findById(commandeId).orElse(null);
    }
}
