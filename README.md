# Dotfiles avec chezmoi

Ce dépôt contient mes fichiers de configuration (dotfiles) gérés avec [chezmoi](https://www.chezmoi.io/).  
Il permet de centraliser et appliquer facilement mes configurations sur différentes machines.

## Shell utilisé

J'utilise **Zsh** comme shell principal, avec le framework [Antidote](https://getantidote.github.io/) pour la gestion des plugins.

### Plugins Zsh installés

- [Aloxaf/fzf-tab](https://github.com/Aloxaf/fzf-tab) : Complétion avec fzf.
- [zdharma-continuum/fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting) *(kind: defer)* : Coloration syntaxique rapide.
- [zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) : Suggestions automatiques.
- [zdharma-continuum/history-search-multi-word](https://github.com/zdharma-continuum/history-search-multi-word) : Recherche avancée dans l'historique.
- [jeffreytse/zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode) : Mode vi pour Zsh.
- [so-fancy/diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) : Amélioration de l'affichage des diffs.

## Outils supplémentaires utilisés

J'utilise également les outils suivants pour améliorer mon environnement :

- [bat](https://github.com/sharkdp/bat) : Affichage amélioré des fichiers (cat avec syntaxe colorée).
- [eza](https://github.com/eza-community/eza) : Alternative moderne à `ls`.
- [fd](https://github.com/sharkdp/fd) : Recherche rapide de fichiers.
- [zoxide](https://github.com/ajeetdsouza/zoxide) : Navigation intelligente dans les dossiers.
- [starship](https://starship.rs/) : Prompt rapide et personnalisable.
- [fzf](https://github.com/junegunn/fzf) : Fuzzy finder pour la recherche interactive.

## Utilisation et personalisation

Vous pouvez librement utiliser ce repo pour avoir une base de customisation pour votre shell ou pour vous inspirez à faire le votre.

1. Forker ce repo chez vous

2. Modifier le fichier [run_once_install_requirement.sh](run_once_install_requirement.sh) pour convenir avec votre installation

2. **Installer chezmoi**  
   Suivez la [documentation officielle](https://www.chezmoi.io/install/) ou utilisez la commande rapide :
   ```bash
   sh -c "$(curl -fsLS get.chezmoi.io)"
   ```

3. **Initialiser avec ce dépôt**  
   ```bash
   chezmoi init --apply https://github.com/<username>/dotfiles.git
   ```

   > ⚠️ Remplace `<username>` par votre nom d’utilisateur GitHub.

4. **Mettre à jour les dotfiles**  
   ```bash
   chezmoi update
   ```

5. Consultez la [doc chezmoi](https://www.chezmoi.io/docs/) pour comprendre comment l'utiliser
