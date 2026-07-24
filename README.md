# MercuryQuicksilver

Native iOS intelligence platform — Quicksilver core.

**Phase 1 Foundation complete (2026-07-24)**

## What works now
- Kernel boot + event bus
- Adaptive personas (Forge, Soul Sworn, Immortal) with system prompts
- Secure Grok client (xAI API via Keychain)
- Local persistence (persona + interaction history)
- Observatory dashboard + Converse chat + Settings
- Full vertical slice ready for SideStore / Xcode

## Quick Start (iPhone-only path)
1. Clone or download this repo source.
2. Open in Xcode (remote Mac / Cloud / friend) or use the provided build scripts when available.
3. Set your xAI API key in Settings (stored in Keychain).
4. Build & install via SideStore / AltStore / TrollStore-compatible pipeline.

## Structure
See `docs/ARCHITECTURE.md`.

## Personas
- **Forge** — Lead Implementation Engineer (default for code work)
- **Soul Sworn** — Honest, witty companion
- **Immortal** — Decisive executor

## Next
Phase 2: Intent execution engine, App Intents / Shortcuts bridge, diagnostics automation, IPA export for pure on-device install.
