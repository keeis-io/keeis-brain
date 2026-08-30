# Prioritize assumptions (Impact × Risk)

Source: [phuryn/pm-skills](https://github.com/phuryn/pm-skills), `pm-product-discovery/skills/prioritize-assumptions`
(MIT License, © Paweł Huryn / The Product Compass). Adapted for reference use.

## When to use

To triage a list of open assumptions or hypotheses and decide which one to test next,
instead of defaulting to the first idea. Manual use — not wired into any pipeline stage.

## Framework

**ICE**: Impact (Opportunity Score × # customers) × Confidence (1–10) × Ease (1–10).
Opportunity Score = Importance × (1 − Satisfaction) (Dan Olsen).

**RICE**: (Reach × Impact × Confidence) / Effort — splits Impact into Reach and Impact.

For this exercise, use two dimensions:
- **Impact**: value created by validating the assumption, and how many customers it affects.
- **Risk**: (1 − Confidence) × Effort.

## Process

1. For each assumption, score Impact and Risk.
2. Place it in the matrix:
   - **Low impact, low risk** → defer.
   - **High impact, low risk** → proceed to implementation.
   - **Low impact, high risk** → reject; not worth the investment.
   - **High impact, high risk** → design an experiment to test it.
3. For each assumption that needs testing, propose an experiment that:
   - Maximizes validated learning for minimal effort.
   - Measures actual behavior, not stated opinions.
   - Has a clear success metric and numeric threshold.
4. Present the result as a table or matrix.

## Further reading

- [Assumption Prioritization Canvas](https://www.productcompass.pm/p/assumption-prioritization-canvas)
