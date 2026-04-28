# VIDEO STACK STATUS — MonaMedia

> État de la stack vidéo utilisable pour ce projet.
> À jour : 2026-04-27.

**Projet** : 06-monamedia
**Règle** : aucune installation, aucune API connectée pour cette session. Tout passe par interfaces web et import manuel des fichiers dans le Drive.

---

## Stack vidéo

| Outil | Statut | Mode d'accès | Usage prévu |
|---|---|---|---|
| **HeyGen Enterprise** | Interface web — disponible si accès validé | Web | Avatar parlant, présentation 30/45/60s |
| **ElevenLabs** | Interface web — voix à confirmer | Web | Voix off (voix Nicolas ou voix FR à choisir) |
| **Remotion 4.0.434** | Disponible pour montage si environnement OK | Local (npx remotion) | Composant réutilisable, export 9:16 / 1:1 / 16:9 |
| **ffmpeg** | À vérifier localement | CLI | Export Remotion final (si présent). Sinon export direct HeyGen. |
| **Flow** | Génération manuelle via prompts | Web | Backgrounds images / start frames |
| **Nano Banana 2** | Génération manuelle via prompts | Web | Images IA haute qualité |
| **Veo** | Génération manuelle via prompts | Web | Clips vidéo IA |
| **Seedance** | Génération manuelle via prompts | Web | Animation backgrounds, loops |
| **Kling** | Génération manuelle via prompts | Web | Clips cinématiques |
| **GPT Image** | Via ChatGPT 5.5 / projet MonaMedia | Web | Images stylisées, mockups |
| **Repos sandbox** `C:\MonaSwitch_Sandbox\repos\` | Référence seulement, **non activés** | Local | 13 repos clonés. Pas d'exécution dans cette session. |

---

## Workflow par scénario

### Scénario A — HeyGen pur (recommandé pour J1)
1. Script (ChatGPT 5.5) → validé par Felix
2. Voix : voix HeyGen native FR **ou** export MP3 ElevenLabs importé dans HeyGen
3. Avatar HeyGen → décor uni ou background image Flow
4. Export depuis HeyGen interface → MP4 9:16 + 1:1
5. Import manuel dans `06_EXPORTS/9x16/` et `06_EXPORTS/1x1/`

### Scénario B — HeyGen + Remotion (si ffmpeg OK)
1. Étapes 1-3 du scénario A → MP4 avatar
2. Import dans `05_PRODUCTION/remotion/`
3. Composition Remotion : avatar bas + B-roll haut + sous-titres
4. `npx remotion render` pour les 3 ratios
5. Output dans `06_EXPORTS/{ratio}/`

### Scénario C — Carrousel (J2, J4, J5)
1. Script slides (ChatGPT 5.5)
2. Visuels : prompts Flow / Nano Banana 2 → images PNG
3. Composition manuelle (Claude Design ou Canva)
4. Export `06_EXPORTS/png/` ou `06_EXPORTS/pdf/`

---

## Bloqueurs / décisions à prendre

- [ ] Confirmer accès HeyGen Enterprise (login Anna/Louis ou login studio)
- [ ] Confirmer voix ElevenLabs (Nicolas ou voix FR custom à entraîner)
- [ ] Vérifier présence ffmpeg sur la machine → décide si Remotion render local possible
- [ ] Décider si on monte Remotion sur J1 ou si on reste full HeyGen pour aller vite

---

## Historique

```
[2026-04-27 16h] Document initial créé. Aucune API connectée, aucune install.
```
