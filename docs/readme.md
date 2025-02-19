<div align = "center">
  <img
    alt = "Arcanix banner"
    src = "data:image/avif;base64,"
  />
  <h3>
    Where Order Emerges from Chaos through Digital Alchemy
  </h3>
</div>

## :crystal_ball: About

Welcome to Arcanix, where digital alchemy meets system architecture. This grimoire
contains carefully crafted NixOS configurations that transmute the raw chaos of
computing into crystalline order.

Core tenets of our arcane craft:

- **Arcane Synchronization** - Configuration changes flow with rhythmic precision,
  bringing harmony to system updates
- **Crystalline Architecture** - Each component precisely faceted through layered
  design, reflecting both beauty and function
- **Ethereal Adaptability** - Like quicksilver, configurations flow seamlessly
  between different system vessels
- **Runic Persistence** - State mutations are carved into declarative runes,
  ensuring reproducible enchantments
- **Void Minimalism** - Embracing the power of emptiness, every element serves
  a purpose

This repository also serves as my personal sanctum of digital craftsmanship. Each
configuration, each script, each pattern represents a step in the eternal dance
between chaos and order.

> [!WARNING]
> This grimoire channels volatile energies and remains in active development:
>
> - Breaking changes occur frequently
> - Configurations are attuned to specific artifacts (hardware)
> - Each commit may bring substantial transmutations
>
> For stable implementations, bind to [released versions](https://github.com/loferil/arcanix/releases).
> While Nix's native restoration magic exists,
> no additional protective wards are in place.

## :open_book: Content

Within these arcane halls, you'll find these primary artifacts:

- **[docs](./.)** - Ancient scrolls containing wisdom and documentation
- **[hosts](../hosts)** - Sanctuaries for different machines, each with unique enchantments
- **[shared](../shared)** - Universal incantations and artifacts used across all sanctuaries
- **[flake.nix](../flake.nix)** - The grand portal through which all magic flows

> [!TIP]
> Throughout these scrolls, you'll find mystical annotations within the code -
> special comments that reveal deeper understanding of the arcane mechanics at work.
> These runes of knowledge are marked with detailed explanations and references to
> ancient texts (documentation) where appropriate.

## :cyclone: Installation

To begin your journey with Arcanix, ensure you possess:

1. A NixOS foundation - Conjured using the [official scrolls](https://nixos.org/manual/nixos/stable/#ch-installation)
2. Flake support enabled - Activated through the [mystical guide](https://nixos.wiki/wiki/Flakes)

Then, speak these words of power as the root sage:

```sh
nixos-rebuild switch --flake github:loferil/arcanix#HOSTNAME
```

Replace `HOSTNAME` with your chosen sanctuary from the **[hosts](../hosts)** directory.

> [!IMPORTANT]
> These configurations are attuned to personal sanctuaries. To harness their power,
> you must first fork the repository and align it with your own resonance
> (hardware and preferences).

## :scroll: License

This grimoire is protected under the **[GNU General Public License v3.0](../license)**,
ensuring:

- Freedom to study and modify these arcane configurations
- Obligation to mark altered enchantments
- Preservation of these rights in derivative works

---

<div align = "center">
  <em>
    "In the confluence of chaos and order, true mastery emerges."
  </em>
</div>
