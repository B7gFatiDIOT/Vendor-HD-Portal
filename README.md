# Vendor HD Portal

A single-page tool for the Help Desk team to send equipment-request emails to vendors.

## Use it

Double-click **`index.html`** (opens in your default browser). No install, no server.

## How it works

**1. Equipment** — pick the spec; the rules auto-fill:

| Computer | Config / Series | RAM (default) | CPU (default) | SSD |
|----------|-----------------|---------------|---------------|-----|
| Mac | Regular | 16 GB | M5 | 512 GB |
| Mac | Developer | 24 GB | M5 Pro | 512 GB |
| ThinkPad | T Series | 16 GB | i7 Ultra | 1 TB |
| ThinkPad | P Series | 16 GB | i7 Ultra | 1 TB |

- **RAM** and **CPU** auto-fill to the recommended value but stay editable (RAM dropdown 16/24/32/64; CPU free-type with suggestions).
- **SSD** is fixed per platform (512 GB for Mac, 1 TB for ThinkPad).
- Add **Quantity**, optional **Notes**, and an optional **Requested by** name for the signature.

**2. Vendor** — choose from your saved vendors, or **+ New vendor** (company name + email). Vendors are stored in this browser and persist between sessions. Use *"⚙ Remove a vendor…"* in the dropdown to delete one.

**3. Review & send** — a live preview shows the exact email. **Open email** launches your default mail client (New Outlook) with the vendor, subject, and body pre-filled — just hit Send. **Copy text** drops the whole thing on your clipboard as a fallback.

## Notes

- Vendor list lives in browser `localStorage` (key `vendor_hd_portal_vendors_v1`). It's seeded with two example vendors — edit or remove them.
- Because vendors are per-browser, sharing the same list across the team would need a shared backend; say the word and that can be added.

Created by Almog Lisbona™ · Global-e Help Desk
