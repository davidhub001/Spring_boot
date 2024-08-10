package com.lefou.david.controller;

import com.lefou.david.model.Commande;
import com.lefou.david.service.CommandeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/commandes")
public class CommandeController {

    @Autowired
    private CommandeService commandeService;

    @PostMapping
    public ResponseEntity<Commande> createCommande(@RequestBody Commande commande) {
        return ResponseEntity.ok(commandeService.saveCommande(commande));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Commande> getCommandeById(@PathVariable Long id) {
        Commande commande = commandeService.findCommandeById(id);
        return commande != null ? ResponseEntity.ok(commande) : ResponseEntity.notFound().build();
    }

    @GetMapping("/findAll")
    public List<Commande> getAllCommandes() {
        return commandeService.findAllCommandes();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCommande(@PathVariable Long id) {
        commandeService.deleteCommande(id);
        return ResponseEntity.ok().build();
    }
}
