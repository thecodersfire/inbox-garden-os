# Built-in features for inbox-garden-os

Purpose: email and document handling

1. **prepare field and mapping files** — run inbox-garden-os-workspace. It creates ~/Documents/inbox-garden-os-workspace/ with Field Notes, Source Data, Map Exports folders.
2. **plan field work** — run inbox-garden-os-plan to open a purpose-specific Markdown plan, saved under ~/Documents/inbox-garden-os-session-plans/.
3. **check data and location readiness** — run inbox-garden-os-check for an interactive checklist. Answers are not saved or transmitted.

These local tools create folders, open a local note, or display prompts. They do not install packages, change system settings, or send data.

Install them from this repository:

    mkdir -p "$HOME/.local/bin"
    install -m 0755 features/inbox-garden-os-workspace features/inbox-garden-os-plan features/inbox-garden-os-check "$HOME/.local/bin/"
