package com.lefou.david.service;

import com.lefou.david.model.Commande;

import java.util.List;

public interface CommandeService {
    Commande saveCommande(Commande commande);
    void deleteCommande(Long commandeId);
    List<Commande> findAllCommandes();
    Commande findCommandeById(Long commandeId);
}
