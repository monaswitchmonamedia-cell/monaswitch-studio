# /videopower — Workflow détaillé

## Table des matières

1. Préflight
2. Brand routing
3. Ingestion
4. Extraction
5. Analyse
6. Sélection des frames
7. Covers
8. Distribution
9. QA
10. Gestion des erreurs

---

## 1. Préflight

Avant toute action :

- identifier projet courant ;
- lire `CLAUDE.md` et `PROJECT_CONTEXT.md` ;
- vérifier que `~/.claude/skills/analyze/SKILL.md` existe ;
- vérifier `python`, `ffmpeg`, `ffprobe`, `yt-dlp` ;
- déterminer si l'entrée est URL ou fichier local ;
- créer un dossier de sortie isolé.

Ne pas mélanger les assets de deux projets.

## 2. Brand routing

`/analyze` est la source de vérité.

Ordre de résolution :

1. projet courant ;
2. marque explicitement citée par Félix ;
3. domaine / compte social de la source ;
4. mapping de `/analyze` ;
5. contexte visuel/texte si nécessaire.

Charger :

- charte ;
- logos officiels ;
- CTA vérifiés ;
- vocabulaire autorisé/interdit ;
- contraintes juridiques ;
- formats prioritaires.

Écrire `brand_context.md` AVANT la génération de covers.

## 3. Ingestion

Utiliser :

```bash
python scripts/videopower_ingest.py "INPUT" --output "OUTPUT_DIR"
```

Options utiles :

```bash
--frames 16
--scene-threshold 0.30
--cookies-browser chrome
```

`--cookies-browser` ne sert que pour une session à laquelle l'utilisateur a légitimement accès.

## 4. Extraction

Le script doit produire :

- vidéo source locale ;
- métadonnées ;
- audio WAV 16 kHz mono ;
- frames uniformes ;
- frames de changements de scène ;
- contact sheet ;
- manifest JSON.

Ensuite utiliser les scripts de `/analyze` si une extraction plus riche est nécessaire (OCR, détails frame par frame, etc.).

## 5. Analyse

### /HOOK

0–3 secondes :

- phrase ;
- image ;
- mouvement ;
- rupture ;
- curiosité ;
- promesse.

Score /10 : compréhension, curiosité, émotion, arrêt du scroll.

### /STRUCTURE

Découper avec timestamps :

1. Hook
2. Contexte
3. Problème
4. Démonstration
5. Escalade
6. Twist
7. Payoff
8. Preuve
9. CTA

### /RETENTION

Lister :

- cuts ;
- zooms ;
- changements de scène ;
- overlays ;
- SFX ;
- musique ;
- silences ;
- accélérations ;
- reveals.

### /MARKETING

Répondre :

- problème reconnu ;
- bénéfice ;
- transformation ;
- preuve ;
- objection ;
- CTA naturel ;
- angle de réutilisation pour la marque.

### /VIRAL

Chercher :

- idée racontable en 1 phrase ;
- contraste ;
- moment WTF ;
- émotion ;
- commentaire probable ;
- motif de partage ;
- motif d'enregistrement.

## 6. Sélection des frames

Créer une shortlist de 5 à 10 frames maximum.

Pour chaque frame :

| Champ | Valeur |
|---|---|
| timestamp | |
| contenu | |
| émotion | |
| lisibilité | |
| potentiel cover /10 | |
| usage | |

Puis déclarer :

- BEST FACE
- BEST SUBJECT
- BEST ACTION
- BEST CONTRAST
- BEST CURIOSITY
- BEST PROOF

Une cover peut être entièrement recréée en image générative si le concept est plus fort qu'un screenshot. Les screenshots deviennent alors **références narratives**, pas arrière-plan obligatoire.

## 7. Covers

### Vertical A — Curiosity

Objectif : arrêter le scroll.

- 9:16 ;
- 2–6 mots ;
- tension / anomalie ;
- sujet énorme ;
- scène propre ;
- branding secondaire mais identifiable.

### Vertical B — Need / Benefit

Objectif : que la bonne cible se reconnaisse immédiatement.

Exemples de mécaniques :

- « VOITURE HS ? FAITES ÇA »
- « VOTRE ÉPAVE A ENCORE DE LA VALEUR »
- « 3 ERREURS À ÉVITER »

### YouTube 16:9 A/B

Même logique, avec priorité au CTR :

- composition gauche/droite ;
- visage ou véhicule plein cadre ;
- pas de microtexte ;
- phrase courte ;
- contraste fort.

### Overlay marque

Pipeline recommandé :

1. générer la scène sans logo complexe ;
2. choisir le rendu ;
3. récupérer les PNG/SVG officiels du projet ;
4. overlay déterministe ;
5. vérifier orthographe pixel-level.

Aucun logo généré n'est considéré officiel.

## 8. Distribution

Pour chaque plateforme produire :

### Instagram
- caption ;
- 5 hashtags principaux ;
- localisation ;
- commentaire épinglé ;
- CTA partage/enregistrement pertinent.

### TikTok
- caption courte ;
- texte cover ;
- hashtags ;
- commentaire épinglé.

### Facebook
- caption page ;
- version groupes locaux si pertinent ;
- CTA site/DM.

### YouTube
- 3 titres ;
- description ;
- 3 hashtags ;
- tags Studio ;
- commentaire épinglé ;
- recommandation cover A/B.

## 9. QA

Checklist obligatoire :

- [ ] marque correcte
- [ ] charte correcte
- [ ] vrais logos
- [ ] orthographe exacte
- [ ] CTA vérifié
- [ ] hook cohérent avec la vidéo
- [ ] pas de promesse inventée
- [ ] pas de faux témoignage
- [ ] ratio correct
- [ ] lisibilité mobile
- [ ] texte ≤ nécessaire
- [ ] screenshot réel clairement distinct d'une scène générée
- [ ] outputs rangés dans le bon projet

## 10. Gestion des erreurs

### URL non récupérable

1. conserver métadonnées accessibles ;
2. tenter les mécanismes prévus dans `/analyze` ;
3. si accès privé : demander un accès/fichier légitime ;
4. ne pas contourner ;
5. ne pas inventer l'analyse.

### `/analyze` absent

Stopper le brand remix automatisé et signaler :

> Dépendance `/analyze` non installée. `/videopower` peut ingérer la vidéo mais ne doit pas inventer la charte, les logos ou CTA.

### CloneViral absent

Ne pas bloquer. Continuer avec `/analyze` et noter dans `ANALYSE.md` :

`CloneViral layer: unavailable — fallback /analyze force framework used.`
