# Quicksilver / Mercury Architecture

**Version:** Phase 1 Foundation — 2026-07-24  
**Status:** Working vertical slice

## Principles
- Modular: every feature owns clear boundaries and public interface.
- Privacy by default: on-device persistence, Keychain for secrets, no data leaves device unless user initiates Grok call.
- Adaptive personas are first-class.
- Diagnostics ship with the feature.
- Prefer working implementations over theoretical perfection.

## Module Map

```
Mercury/
─── App/
│   ─── MercuryApp.swift          // @main entry
│   ─── MercuryState.swift        // ObservableObject + orchestration
─── Core/
│   ─── MercuryKernel.swift       // Boot, intents, EventBus
│   ─── PersonaProfile.swift      // Forge / Soul Sworn / Immortal
─── Grok/
│   ─── GrokClient.swift          // xAI chat + Keychain
─── Persistence/
│   ─── PersistenceManager.swift  // App Support JSON store
─── UI/
    ─── RootView.swift            // Observatory + Converse + Settings
```

## Data Flow
1. User opens app → MercuryState.boot() → Kernel.boot() + Persistence.load
2. Persona switch → State updates + Persistence.save + Kernel event
3. User message → State.sendMessage → Kernel.execute(.converse) → GrokClient.chat (with persona system prompt) → append to messages + Persistence.appendInteraction
4. Diagnostics are in-memory + exportable

## PersistenceManager Spec (resolved)
- Location: Application Support/Mercury/
- Files: persona.json, history.json (capped 200)
- No external dependencies. Codable + atomic writes.
- Future: SwiftData migration path kept open; current JSON is sufficient and offline-first.

## Next Vertical Slices
- Full intent handlers (automate / research / execute)
- InstrumentRegistry + Hands (system actions via App Intents / Shortcuts)
- Offline memory vault with embeddings (on-device)
- IPA build pipeline for SideStore
