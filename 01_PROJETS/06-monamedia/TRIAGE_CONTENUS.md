# TRIAGE CONTENUS — MonaMedia

> Registre vivant du tri des fichiers déposés dans `_INBOX_A_TRIER/`.
> Une ligne par fichier. À mettre à jour à chaque dépôt et à chaque déplacement.

**Projet** : 06-monamedia
**Créé le** : 2026-04-27
**Source** : `_INBOX_A_TRIER/`

---

## Légende

- **Statut** : 🟡 à trier · 🟢 trié · 🔵 archivé · 🔴 rejeté
- **Action manuelle** : ce que Felix (ou Anna/Louis) doit faire à la main avant ou après le déplacement
- **Destination** : chemin relatif depuis `06-monamedia/`

---

## Registre

| fichier | type | source | destination recommandée | statut | action manuelle | commentaire |
|---|---|---|---|---|---|---|
| theFIVE.MP4 | vidéo | Felix | 04_ASSETS/videos_brutes/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | bande-annonce officielle theFIVE — 60.77s |
| hf_20260328_205158_bdf3ee66-…mp4 | vidéo | Felix | 04_ASSETS/videos_brutes/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | vidéo IA cinématique avatar |
| AI Generated Video - Cinematic continuous tracking shot…mp4 | vidéo | Felix | 04_ASSETS/videos_brutes/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | ⚠️ taille identique (7,491,143 bytes) à `video-fb161097-…(1).mp4` — confirmer doublon | tracking shot IA |
| video-fb161097-86dd-414d-a8f0-67a46b4e33a6 (1).mp4 | vidéo | Felix | 04_ASSETS/videos_brutes/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | ⚠️ probable doublon de la précédente | à départager |
| generer_l'avatar_officiel_202603281045.png | avatar | Felix | 04_ASSETS/avatars_heygen/ + 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | avatar officiel Attention Man |
| Man_with_helmet_202603292146.jpeg | avatar | Felix | 04_ASSETS/avatars_heygen/ + 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | casque = signature Attention Man |
| Man_in_black_202603292147.jpeg | avatar | Felix | 04_ASSETS/avatars_heygen/ + 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | sweat noir = signature |
| monamedia-app-dashboard.png_202603271443.jpeg | capture app | Felix | 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | dashboard principal app |
| monamedia-app-news.png_202603271443.jpeg | capture app | Felix | 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | vue contenu pub |
| monamedia-app-push_notifications.png_202603271443.jpeg | capture app | Felix | 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | mécanique proof-of-watch |
| monamedia-app-dashboard-customers-expaned.png_202603271443.jpeg | capture app | Felix | 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | vue annonceur SME |
| TheFiveBox Kopie.png | mockup | Felix | 04_ASSETS/images_source/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | mockup packaging theFIVE |
| StarterPack_box.png | mockup | Felix | 04_ASSETS/images_source/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | mockup pack SME 250€/mois |
| monaReportMockUp.png | mockup | Felix | 04_ASSETS/images_source/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | aucune | mockup reporting |
| MonaDashboardSME_MobileMailing_1-6_.jpg | dashboard ref | Felix | 04_ASSETS/references_visuelles/ | 🟢 copié, original conservé dans _INBOX_A_TRIER | 5 variantes (_2 à _6) restent dans INBOX | bonus dashboard SME |
| theFIVE_frames/frame_01.png à frame_12.png | frames extraites | ffmpeg local | 04_ASSETS/references_visuelles/theFIVE_frames/ | 🟢 généré depuis theFIVE.MP4 | aucune | 12 frames espacées de ~4.67s |
| LOGO OFFICIEL.jpg | logo officiel | Felix | 04_ASSETS/logos/logo_monamedia_officiel.jpg | 🟢 copié, original conservé dans _INBOX_A_TRIER | demander à Felix une version `.svg` + `.png` transparent HD | symbole M rouge + wordmark + baseline "attention becomes value." |

---

## Règles de tri rapides

| Type d'input | Destination |
|---|---|
| Logo, charte graphique, fonts client | `02_BRAND_KIT/` (ou `04_ASSETS/logos/` pour les logos) |
| Captures site monamedia.mc | `03_SOURCES_RAW/images/` |
| Notes offre, séminaires, salons (md/pdf/docx) | `03_SOURCES_RAW/documents/` |
| Pitch audio Anna/Louis | `03_SOURCES_RAW/audios/` |
| Vidéos brutes client | `03_SOURCES_RAW/videos/` puis `04_ASSETS/videos_brutes/` |
| Références visuelles (Pinterest, Instagram, sites) | `04_ASSETS/references_visuelles/` |
| Captures concurrents | `03_SOURCES_RAW/concurrents/` |

---

## Historique des décisions de tri

(format : `[DATE HH:MM] [fichier] [destination] [par qui]`)

```
[2026-04-27 16h] (registre initialisé, aucun fichier encore)
[2026-04-27 18h30] Phase 2 tri ciblé : 15 fichiers copiés depuis _INBOX_A_TRIER vers destinations (originals conservés). 12 frames theFIVE extraites via ffmpeg local. ~96 fichiers restent dans _INBOX_A_TRIER pour tri ultérieur.
```

---

## Doublons exacts détectés (taille au byte près) — validation Felix avant suppression

| Fichier 1 | Fichier 2 (et 3 si applicable) | Taille | Recommandation |
|---|---|---|---|
| cQki010YF0u6tnO-JJc5L_output_0.mp4 | (1).mp4 + (2).mp4 | 13 589 446 B | **Garder l'original**, virer (1) et (2) |
| 0S7Z-UaZVV1DnkR8Tunke_iZN9AZX0_00001.jpg | (1).jpg + (2).jpg | 1 348 112 B | **Garder l'original**, virer (1) et (2) |
| 99LVKVCzOcnSpgcdwrxe6_YPeXtMLb_00001.jpg | (1).jpg | 1 002 647 B | Garder l'original |
| wVmPiQtLr5PLBTt2sAvMH_ocb6HAF3_00001.jpg | (1).jpg | 1 042 143 B | Garder l'original |
| meev_12BJesy4I8W86kfY_jOd0hCdS_00001.jpg | (1).jpg | 1 125 139 B | Garder l'original |
| RdrCdIisxvRfcbQ551qBe_wZE33Wqi_00001.jpg | (1).jpg | 1 216 274 B | Garder l'original |
| h1TrRaUALXKcp0NPgFpZw_l2nYxeSn_00001.jpg | (1).jpg | 1 366 632 B | Garder l'original |
| ZpD3Tx2VzBuBy49uv1sTI_C67YVf7O_00001.jpg | (1).jpg | 1 401 015 B | Garder l'original |
| -abrKDqMZld7nHxK8lIQZ_nv1HGLI2_00001.jpg | (1).jpg | 976 643 B | Garder l'original |
| AI Generated Video - Cinematic continuous tracking shot…mp4 | video-fb161097-86dd-414d-a8f0-67a46b4e33a6 (1).mp4 | 7 491 143 B | ⚠️ **Noms différents mais taille identique** — vérifier visuellement avant de trancher |

> **Aucune suppression effectuée.** Liste fournie pour validation Felix. Les originals dans `_INBOX_A_TRIER/` sont intacts.
