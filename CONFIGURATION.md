# Site Configuration Guide

## hugo.toml — Key Parameters

### Shop Identity

| Parameter | Description |
|-----------|-------------|
| `params.shopName` | Shop name shown in the navbar, hero, and contact section |
| `params.phone` | Phone number displayed in contact panel and contact section |
| `params.email` | Email address displayed in contact panel and contact section |
| `params.address` | Street address displayed in contact panel and contact section |
| `params.hours` | Business hours displayed in contact panel and contact section |

### UI Options

| Parameter | Type | Description |
|-----------|------|-------------|
| `params.showContactPanel` | `true` / `false` | Show or hide the floating side panel with contact info on the hero section |
| `params.themeMode` | `"light"` | Visual theme (currently only `light` is supported) |

### Colors

All colors are set under `[params.colors]` as hex strings.

| Parameter | Default | Description |
|-----------|---------|-------------|
| `background` | `#ffffff` | Page background |
| `surface` | `#f9fafb` | Card and section backgrounds |
| `text` | `#1f2937` | Primary text color |
| `primaryAction` | `#dc2626` | Accent color — buttons, icons, highlights |
| `secondaryText` | `#6b7280` | Muted/secondary text |

### Font

Set under `[params.font]`.

| Parameter | Default | Description |
|-----------|---------|-------------|
| `family` | `"Outfit"` | Google Font family name |
| `size` | `16` | Base font size in pixels |

### Language & Tagline

Each language has its own tagline set under `[languages.<code>.params]`.

```toml
[languages.en.params]
  shopTagline = "Quality parts. Fair prices. Every make and model."

[languages.pl.params]
  shopTagline = "Jakość części. Uczciwe ceny. Każda marka i model."
```

---

## Adding New Parts

Parts are defined in `data/parts.yaml`. Each entry is a YAML list item with the following fields:

```yaml
- id: 7
  name: Timing Belt          # English name
  name_pl: Pasek Rozrządu    # Polish name
  price: "$34.99"            # Price as a string (include currency symbol)
  icon: settings             # Lucide icon name (see https://lucide.dev/icons/)
  description: Reinforced rubber belt for precise engine timing
  description_pl: Wzmocniony pasek gumowy dla precyzyjnego rozrządu silnika
```

### Steps

1. Open `data/parts.yaml`.
2. Append a new block at the end of the file.
3. Set `id` to the next available integer.
4. Provide both `name` (English) and `name_pl` (Polish) translations.
5. Set `price` as a string including the currency symbol, e.g. `"$34.99"`.
6. Pick an `icon` name from [lucide.dev/icons](https://lucide.dev/icons/) — use the kebab-case name exactly as shown on the site (e.g. `cloud-rain`, `disc`, `zap`).
7. Write a short `description` in English and `description_pl` in Polish.

Rebuild the site (`make build` or `hugo`) and the new part will appear in the parts grid automatically.
