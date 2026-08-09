# CLAUDE.md — MonaSwitch Studio

Tu travailles dans le projet STUDIO DESIGN x VIDEOS de MonaSwitch.

## Rôle
Claude Code / Claude Design = exécution technique et design.
GPT-5.5 = cerveau stratégique : briefs, angles marketing, SEO/AEO/GEO, scripts, prompts image/vidéo, direction artistique, contrôle qualité stratégique.

## Règles globales
1. Toujours lire le brief projet, la charte graphique et les sources avant de produire.
2. Toujours travailler dans le bon dossier projet.
3. Ne jamais mélanger deux projets dans les mêmes fichiers.
4. Un projet peut contenir tous les formats : UGC, cinematic, carrousel, reels, article, ads, site, email.
5. Pour Claude Design : commencer par un design system, puis produire les sections/écrans, puis exporter proprement.
6. Pour Remotion : produire des composants réutilisables, exportables en 9:16, 1:1 et 16:9 si nécessaire.
7. Pour le code : structure claire, testable, maintenable.
8. Vérifier desktop, mobile, cohérence visuelle, performance, accessibilité basique.
9. Ne pas utiliser Metricool comme outil central. La publication/planification RS est à définir autrement.
10. Ne jamais scanner, déplacer ou supprimer des fichiers personnels hors MonaSwitch_Studio sans instruction explicite.

## Skills Claude Code prioritaires
frontend-design, playwright-skill, self-healing-claude, superpowers, security-review, skill-creator, researcher, MCP builder, analyze, videopower.

## Orchestration vidéo

- `/analyze` reste la source de vérité pour EXTRACT/REMIX, routage marque, charte, logos, CTA et conformité.
- `/videopower` est la surcouche vidéo : URL/fichier → ingestion → screenshots/audio/métadonnées → `/analyze` → hooks/marketing/viral → `ANALYSE.md` → briefs covers A/B → distribution multi-RS → QA.
- Ne jamais recréer `/analyze` dans `/videopower`.
- Pour installer/synchroniser `/videopower`, utiliser `00_SYSTEM/SCRIPTS/Install-VideoPower.ps1`.

## Format de réponse obligatoire
Répondre toujours avec : ce que j’ai compris, plan court, fichiers créés/modifiés, commandes à exécuter, contrôles qualité, prochaine action.