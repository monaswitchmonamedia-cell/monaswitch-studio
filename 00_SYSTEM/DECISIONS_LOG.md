# MONASWITCH STUDIO — DECISIONS LOG

> Journal chronologique de toutes les décisions structurantes du Studio.
> Chaque décision a un ID, une date, un statut, et une justification.
> **Ne jamais supprimer une décision** — pour annuler, ajouter une décision contraire qui marque l'ancienne comme "remplacée".

---

## DECISIONS — 2026-04-26 (jour de naissance du Studio)

### D-001 — Architecture Studio centralisé
**Statut** : ACTIVE
**Décision** : Un seul dossier racine `G:\Mon Drive\MonaSwitch_Studio\` sur Google Drive, avec 24 dossiers projets dans `01_PROJETS\`.
**Pourquoi** : Centralisation, sync auto, accès depuis tout PC connecté au compte `monaswitchmonamedia@gmail.com`.

### D-002 — Une conversation par projet
**Statut** : ACTIVE
**Décision** : 1 conversation Claude.ai/Claude Code par projet, pas par format.
**Pourquoi** : Évite confusion entre projets. Chaque projet peut contenir tous les formats (UGC, cinematic, carrousel, article, ad, site, email).

### D-003 — Travail séquentiel
**Statut** : ACTIVE
**Décision** : Bosser à fond sur 1 projet jusqu'à validation, puis passer au suivant.
**Pourquoi** : Évite la fatigue de contexte. Pas d'ouverture parallèle de 5 projets au démarrage.

### D-004 — Rôles IA
**Statut** : ACTIVE
**Décisions** :
- **Claude Opus 4.7** (Claude Max 200€/mois) = exécution technique et design
- **GPT-5.5 Pro** (30€/mois) = stratégie, prompts, SEO/AEO/GEO, scripts, direction artistique, tri, contrôle qualité
- **Codex** (optionnel) = audit code/repo/tests/refactor uniquement, **PAS génération d'image**

### D-005 — Metricool retiré du cœur du système
**Statut** : ACTIVE
**Décision** : Metricool n'est plus considéré comme dépendance par défaut. L'outil de publication RS reste **À DÉFINIR**.
**Pourquoi** : Trop de dépendance à un seul outil. À redécider plus tard avec analyse coût/bénéfice.

### D-006 — Génération d'image sans API payante (sauf cas validé)
**Statut** : ACTIVE
**Décision** : Pour la génération d'image, utiliser Flow + Nano Banana 2 + GPT-Image (interfaces) sans payer d'API supplémentaire.
**Pourquoi** : Maîtrise du budget. APIs payantes uniquement si workflow concret le justifie.

### D-007 — Pas de scan automatique du PC/Drive
**Statut** : ACTIVE
**Décision** : Aucun script ne scanne le PC entier ou le Drive entier sans confirmation explicite. Les scans sont limités à des dossiers ciblés et pré-affichés.
**Pourquoi** : Sécurité, vie privée, fichiers tiers (Alain, etc.).

### D-008 — Confidentialité fichiers tiers (Alain)
**Statut** : ACTIVE
**Décision** : Aucun fichier privé d'Alain (ami) ne sera scanné, déplacé ou supprimé sans son accord explicite.
**Pourquoi** : Respect vie privée. Les actions sur ses fichiers sont son rôle, pas le nôtre.

### D-009 — Sauvegarde des décisions et état
**Statut** : ACTIVE
**Décision** : Toute décision structurante doit être loggée dans `00_SYSTEM/DECISIONS_LOG.md`. État actuel maintenu dans `00_SYSTEM/STUDIO_STATE.md`.
**Pourquoi** : Persistance de la mémoire entre conversations. Aucune décision perdue.

### D-010 — Sécurité scripts
**Statut** : ACTIVE
**Décisions structurantes pour tout script PowerShell** :
- Affiche les dossiers scannés/exclus AVANT exécution
- Ne lit jamais les fichiers sensibles : `.env`, `.npmrc`, `credentials.json`, `*.pem`, `*.key`, `id_rsa`, etc.
- Masque tokens et secrets dans tous les outputs (URLs, commandes, env vars)
- Affiche présence/absence des clés API, jamais les valeurs
- Ne supprime/déplace/modifie aucun fichier non explicitement validé

### D-011 — Verrouillage mémoire avant installation
**Statut** : ACTIVE
**Décision** : Avant d'installer Python, ffmpeg, gh, ou de configurer des clés API, créer d'abord les 5 fichiers maîtres dans `00_SYSTEM/` :
1. STUDIO_STATE.md
2. DECISIONS_LOG.md
3. CHEATSHEET_COMMANDES.md
4. MAPPING_FORMATS_OUTILS.md
5. INSTALLATION_PRIORITIES.md
**Pourquoi** : La mémoire du système doit être verrouillée avant d'ajouter de la complexité.

### D-012 — Format mémoire pour nouvelles conversations
**Statut** : ACTIVE
**Décision** : Toute nouvelle conversation (Claude Code, Claude.ai, GPT-5.5) commence par lire :
- `00_SYSTEM/STUDIO_STATE.md`
- `00_SYSTEM/DECISIONS_LOG.md`
- `00_SYSTEM/MAPPING_FORMATS_OUTILS.md`
**Pourquoi** : Aligner immédiatement toute IA sur l'état du Studio. Plus jamais de "Claude a oublié".

### D-013 — Ressources externes
**Statut** : ACTIVE — recensé mais pas tous configurés
**Outils externes payés disponibles** :
- HeyGen Enterprise (~89$/mois)
- ElevenLabs
- Higgsfield (crédits)
- CreaShorts
- Clone Viral
- Flow / Nano Banana
- Abacus
- Google Ultra (Gemini, Imagen, Drive)
- Claude Max (200€/mois)
- ChatGPT 5.5 Pro (30€/mois)
- SEMrush + SurferSEO

### D-014 — Codex non prioritaire (validé par GPT-5.5)
**Statut** : ACTIVE
**Décision** : Codex est conservé comme outil **optionnel** de review/refactor code, **non prioritaire**, à activer quand les premiers repos de production seront stabilisés.
**Pourquoi** :
- Le cœur du Studio fonctionne avec Claude Code + GPT-5.5 + Claude Design
- Ajouter Codex maintenant = couche mentale et technique inutile
- Codex sert à : audit code, review GitHub PR, tests, refactor Remotion/frontend, diffs
- Codex ne sert PAS à générer images/vidéos (rappel important)
**Conditions d'activation future** :
1. Un vrai repo Remotion ou frontend à auditer existe
2. Des PR GitHub circulent
3. Des tests Playwright sont en place
4. Besoin réel de reviewer du code produit par Claude Code

### D-015 — Hiérarchie outils IA validée (GPT-5.5)
**Statut** : ACTIVE
**Décision** : Stack IA principal du Studio :
- **Claude Code** = atelier principal local (exécution technique/design)
- **GPT-5.5** = stratégie / prompts / direction / tri / SEO/AEO/GEO
- **Claude Design** = design site / UI premium
- **Flow + Nano Banana + GPT-Image** = génération images (interfaces, pas APIs)
- **Seedance / Kling / Higgsfield** = génération vidéo IA
- **Remotion** = montage / export multi-format
- **Codex** = contrôle qualité code, plus tard, non prioritaire

---

## DECISIONS À PRENDRE PROCHAINEMENT

- [ ] D-???: Outil de publication RS définitif (alternative à Metricool ou retour Metricool)
- [ ] D-???: Évaluation Zopia (utile/pas utile pour Studio)
- [ ] D-???: Quel projet pilote attaquer en premier après verrouillage ?
- [ ] D-???: Stratégie GitHub (gh CLI, repos privés MonaSwitch, organisation Github)
- [ ] D-???: Repos GitHub additionnels à installer (Self-Healing, Superpowers, Skill Creator, Frontend Design officiel, MCP Builder, Researcher, Playwright, Security Review)

---

## FORMAT POUR AJOUTER UNE NOUVELLE DÉCISION

```
### D-XXX — [Titre court]
**Statut** : ACTIVE | REMPLACÉE par D-YYY | ANNULÉE
**Décision** : [Description claire en 1-3 phrases]
**Pourquoi** : [Justification courte]
**Date** : [YYYY-MM-DD]
```
